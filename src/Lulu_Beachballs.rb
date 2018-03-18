#-------------------------------------------------------------------------------
#
# Lulu Walls
# https://github.com/LuluWalls
#-------------------------------------------------------------------------------

require 'sketchup.rb'
require 'extensions.rb'

#-------------------------------------------------------------------------------

module Lulu

  ### CONSTANTS ### ------------------------------------------------------------

  # Plugin information
  PLUGIN_ID       = File.basename( __FILE__ ).freeze
  PLUGIN_NAME     = 'Lulu_Beachballs'.freeze
  PLUGIN_VERSION  = '1.0.0'.freeze
  REQUIRED_SU_VERSION = 8

  ### EXTENSION ### ------------------------------------------------------------

  unless file_loaded?( __FILE__ )
    # The purpose of this file is solely to make it compatible with the
    # Extension Warehouse policies.
    file_loaded( __FILE__ )
    loader = File.join( 'Lulu_beachballs', 'Lulu_Beachballs_core.rb' )
    ex = SketchupExtension.new( PLUGIN_NAME, loader)
    ex.description = 'Library of shared functions used by other extensions.'
    ex.version     = PLUGIN_VERSION
    ex.copyright   = 'Lulu Walls© 2018'
    ex.creator     = 'Lulu Walls'
    Sketchup.register_extension( ex, true )
  end

end

#-------------------------------------------------------------------------------

file_loaded( __FILE__ )

#-------------------------------------------------------------------------------
