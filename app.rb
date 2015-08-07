require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @word_to_count = params.fetch('word_to_count')
  @word_count = params.fetch('word_count').word_count(params.fetch('word_to_count'))
  erb(:word_count)
end
