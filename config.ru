#require File.join(File.dirname(__FILE__), '..', 'lackie', 'lib', 'lackie')
require 'lackie'
require 'lackie/rack'

use Lackie::Rack::Middleware
use Rack::Static, :urls => ["/"], :root => "public"
run lambda { |e| [404, {'Content-Type' => 'text/html'}, ['Not Found']] }
