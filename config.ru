require 'opal-sprockets'
require 'clearwater'
run Opal::Server.new { |server|
  server.main = 'application'
  server.append_path 'app'
}