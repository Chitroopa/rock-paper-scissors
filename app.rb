require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissor')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @winner = params.fetch('player1').rock_paper_scissor(params.fetch('player2'))
  erb(:result)
end
