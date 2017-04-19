require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('rock_paper_scissor', {:type => :feature}) do
  it('accepts user input and displays result') do
    visit('/')
    choose('player1', checked: 'Rock')
    choose('player2', checked: 'Paper')
    click_button('Play')
    expect(page).to have_content('Player2 wins')
  end
end
