
#Gem.paths=(ENV)
  #
  # ensures GEM_PATH (set in web.xml) is followed
  #
  # UPDATED: now done in juryb/rack/rack_ext.rb in the jruby-rack .jar

#require 'pp'
require 'rack'

#$: << 'lib'

STDOUT.sync = true
STDERR.sync = true

use Rack::Runtime
  #
  # Sets X-Runtime response header...

run lambda { |env|
  [ 200, { 'Content-Type' => 'text/plain' }, %w[ MCP Zero ] ] }

