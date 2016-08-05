require 'spec_helper'

feature 'Hello World' do
  scenario 'can access application.css' do
    visit '/assets/uswds/application.css'

    expect(page.status_code).to eq 200
  end
end
