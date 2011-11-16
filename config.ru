require './app'
run Sinatra::Application
configure :production do
  require 'newrelic_rpm'
end
