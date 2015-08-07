require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count path', {:type => :feature}) do
  it('processes text to be checked and word entries') do
    visit('/')
    fill_in('word_count', :with => 'Monday monday so good to me')
    fill_in('word_to_count', :with => 'monday')
    click_button('Submit')
    expect(page).to have_content(2)
  end
end
