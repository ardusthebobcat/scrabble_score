require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble score process', {:type => :feature}) do
  it('processes the user entry and returns the score value') do
    visit('/')
    fill_in('inputForm', :with => 'dog')
    click_button('Send')
    expect(page).to have_content(5)
  end
end
