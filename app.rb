require 'sinatra'
require 'yaml'
configure :production do
  require 'newrelic_rpm'
end

get '/' do
  episodes_file =  File.join( File.dirname(__FILE__) , 'episodes.yml')
  @episodes = YAML.load_file(episodes_file)["episodes"]
  erb :index
end

get"/:tag" do |tag|
  episodes_file =  File.join( File.dirname(__FILE__) , 'episodes.yml')
  @episodes = YAML.load_file(episodes_file)["episodes"].select do |episode|
    episode["tags"].include?(tag)
  end
  erb :index

end

