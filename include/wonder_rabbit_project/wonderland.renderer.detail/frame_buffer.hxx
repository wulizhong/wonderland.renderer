#pragma once

#include <type_traits>

#include "glew.detail/c.hxx"
#include "glew.detail/gl_type.hxx"
#include "glew.detail/error.hxx"
#include "glew.detail/wrapper.detail/frame_buffer.hxx"

#include "texture.hxx"
#include "render_buffer.hxx"

namespace wonder_rabbit_project
{
  namespace wonderland
  {
    namespace renderer
    {
      
      struct frame_buffer_t
        : protected glew::frame_buffer_t
        , public std::enable_shared_from_this< frame_buffer_t >
      {
      protected:
        const glew::gl_type::GLuint _frame_buffer_id = 0;
        
        template
        < typename glew::gl_type::GLenum T_target
        , typename glew::gl_type::GLenum T_internal_format
        , typename glew::gl_type::GLenum T_attachment
        >
        auto _bind_texture
        ( std::shared_ptr< renderer::texture_t< T_target, T_internal_format > > texture
        , glew::gl_type::GLenum texture_target = T_target
        )
          -> void
        {
          const auto texture_id = texture ? texture -> texture_id() : 0 ;
          
//#if defined( GL_VERSION_3_2 ) && ! defined( EMSCRIPTEN )
//          frame_buffer_texture< T_attachment >( texture_id );
//#else
          switch( T_target )
          {
            case GL_TEXTURE_1D:
              frame_buffer_texture_1d< T_attachment >( texture_id );
              break;
            case GL_TEXTURE_CUBE_MAP:
            case GL_TEXTURE_2D:
              frame_buffer_texture_2d< T_attachment >( texture_id, texture_target );
              break;
            case GL_TEXTURE_3D:
              frame_buffer_texture_3d< T_attachment >( texture_id );
              break;
            default:
              throw std::logic_error( "_bind_texture: unsupported T::target type." );
          }
//#endif
          WRP_GLEW_TEST_ERROR
        }
        
        template < class T, class ... Ts >
        auto _bind_textures( T texture, Ts ... textures ) -> void
        {
          _bind_texture( texture );
          _bind_textures( textures ... );
        }
        
      public:
        frame_buffer_t()
          : _frame_buffer_id( generate_frame_buffer() )
        { }
        
        ~frame_buffer_t()
        { safe_delete_frame_buffer( _frame_buffer_id ); }
        
        auto frame_buffer_id() -> decltype( _frame_buffer_id )
        { return _frame_buffer_id; }
        
        template < typename glew::gl_type::GLenum T_target = GL_FRAMEBUFFER >
        auto bind() -> void
        {
          bind_frame_buffer< T_target >( _frame_buffer_id );
          glew::test_error( __FILE__, __LINE__ );
        }
        
        template < typename glew::gl_type::GLenum T_target = GL_FRAMEBUFFER >
        auto unbind()
          -> std::shared_ptr< frame_buffer_t >
        {
          bind_frame_buffer< T_target >();
          glew::test_error( __FILE__, __LINE__ );
          
          return shared_from_this();
        }
        
        template < typename glew::gl_type::GLenum T_target = GL_FRAMEBUFFER >
        auto scoped_bind()
          -> destruct_invoker_t
        {
          auto r = scoped_bind_frame_buffer< T_target >( _frame_buffer_id );
          glew::test_error( __FILE__, __LINE__ );
          return r;
        }
        
        template < class ... Ts >
        auto bind_textures( Ts ... textures )
          -> void
        {
          auto binding = scoped_bind();
          _bind_textures( textures ... );
        }
        
        template < class T >
        auto bind_texture
        ( std::shared_ptr< T > texture = nullptr
        , glew::gl_type::GLenum texture_target = T::target
        )
          -> std::shared_ptr< frame_buffer_t >
        {
          _bind_texture
            < T::target
            , T::internal_format
            , attachment( glew::texture_t::base_internal_format( T::internal_format ) )
            >
            ( texture, texture_target )
            ;
          WRP_GLEW_TEST_ERROR
          
          return shared_from_this();
        }
        
        template < class T >
        auto scoped_bind_texture
        ( std::shared_ptr< T > texture = nullptr
        , glew::gl_type::GLenum texture_target = T::target
        )
          -> destruct_invoker_t
        {
          auto s = shared_from_this();
          bind_texture( texture, texture_target );
          return destruct_invoker_t( [ s ]{ s -> bind_texture< T >( nullptr, GL_TEXTURE_CUBE_MAP ); } );
        }
        
        auto render_buffer( std::shared_ptr< render_buffer_t > render_buffer )
          -> void
        {
          const auto f = glew::texture_t::base_internal_format( render_buffer -> internal_format() );
          frame_buffer_render_buffer( attachment( f ) , render_buffer -> render_buffer_id() );
        }
        
        template < class T_render_buffer, class T_texture >
        auto bind_render_buffer_with_texture( std::shared_ptr< T_render_buffer > render_buffer, std::shared_ptr< T_texture > texture )
          -> void
        {
          // bind render buffer
          render_buffer -> bind();
          
          // set internal internal format to render buffer
          render_buffer -> template internal_format< T_texture >();
          
          // attach render buffer to frame buffer
          frame_buffer_t::render_buffer( render_buffer );
          
          // storage from texture to render buffer
          render_buffer -> storage( texture );
        }
        
      };
      
    }
  }
}