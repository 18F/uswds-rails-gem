require 'spec_helper'

feature 'Hello World' do
  scenario 'can access application.css' do
    visit '/assets/uswds/rails/application.css'

    expect(page).to have_content '/* Hello World */'
  end
end
