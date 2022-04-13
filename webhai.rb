require 'rubygems'
require 'bundler/setup'

get '/ohai' do
  ohai = Ohai::System.new()
  data = ohai.all_plugins()
  data.to_json
end

get '/ohai/:plugin' do
  ohai = Ohai::System.new()

  data = ohai.all_plugins(params['plugin'].to_s)

  output = Mash.new
  output[params['plugin']] = data[params['plugin']]
  output.to_json
end
