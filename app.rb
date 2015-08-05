require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/') do
  erb(:index)
end

get('/title') do
  @title= params.fetch('inputForm')
  @score= params.fetch('inputForm').scrabble_score()
  erb(:title)
end
