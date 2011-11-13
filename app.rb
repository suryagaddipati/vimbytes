require 'sinatra'

get '/' do
  @episodes = [ {name: "openclose"}]
  erb :index
end

