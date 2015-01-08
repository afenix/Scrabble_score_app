require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:form)
end

get('/result') do
    @input1 = params.fetch("scrabble_word")
    @result = @input1.scrabble()
    erb(:result)
end
