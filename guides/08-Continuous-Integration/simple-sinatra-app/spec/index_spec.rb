Capybara.app = Sinatra::Application

describe 'home page', type: :feature do
  it 'displays correct text' do
    visit '/'
    expect(page).to have_content('Deploy me to Heroku, please!')
  end
end
