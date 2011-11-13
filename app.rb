require 'sinatra'
require 'yaml'

get '/' do
  episodes_file =  File.join( File.dirname(__FILE__) , 'episodes.yml')
  @episodes = YAML.load_file(episodes_file)["episodes"]
  erb :index
end

