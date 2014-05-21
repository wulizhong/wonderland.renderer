#pragma once

#include <type_traits>

#include "../c.hxx"
#include "../gl_type.hxx"

namespace wonder_rabbit_project
{
  namespace wonderland
  {
    namespace renderer
    {
      namespace glew
      {
        template < typename gl_type::GLenum T_pname, bool T_value >
        struct enable_impl_t { static inline auto invoke() -> void; };
        
        template < typename gl_type::GLenum T_pname >
        struct enable_impl_t < T_pname, true >
        { static inline auto invoke() -> void { c::glEnable( T_pname ); } };
        
        template < typename gl_type::GLenum T_pname >
        struct enable_impl_t < T_pname, false >
        { static inline auto invoke() -> void { c::glDisable( T_pname ); } };
        
        struct enable_t
        {
          
          template < typename gl_type::GLenum T_pname, bool T_value = true >
          static inline auto enable()
            -> void
          { enable_impl_t< T_pname, T_value >::invoke(); }
          
          template < typename gl_type::GLenum T_pname >
          static inline auto disable()
            -> void
          { enable_impl_t< T_pname, false >::invoke(); }
          
          template < typename gl_type::GLenum T_pname >
          static inline auto enable( gl_type::GLboolean enable )
            -> void
          { enable ? c::glEnable( T_pname ) : c::glDisable( T_pname ); }
          
          template < class T = void >
          static inline auto enable( gl_type::GLenum pname, gl_type::GLboolean enable = true )
            -> void
          { enable ? c::glEnable( pname ) : c::glDisable( pname ); }
          
          template < class T = void >
          static inline auto disable( gl_type::GLenum pname )
            -> void
          { c::glDisable( pname ); }
          
          static inline auto multisample_capability()
            -> bool
          {
            gl_type::GLint buffers, samples;
            
            c::glGetIntegerv(GL_SAMPLE_BUFFERS, &buffers);
            c::glGetIntegerv(GL_SAMPLES, &samples);
            
            return buffers >= 1 and samples >= 2;
          }
          
          inline auto multisample( bool enable = true )
            -> void
          {
            if ( not enable )
            {
#ifndef EMSCRIPTEN
              c::glDisable( GL_MULTISAMPLE );
#endif
              c::glDisable( GL_SAMPLE_ALPHA_TO_COVERAGE );
              return;
            }
            
            if ( not multisample_capability() )
              throw std::runtime_error( "cannot use multi sample." );
#ifndef EMSCRIPTEN
            // need OpenGL API
            //  but on GLES2 MULTISAMPLE is true default and not support glEnable/glDisable it.
            c::glEnable( GL_MULTISAMPLE );
#endif
            c::glEnable( GL_SAMPLE_ALPHA_TO_COVERAGE );
            
          }
          
        };
        
      }
    }
  }
}