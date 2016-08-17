require 'spec_helper'

feature 'Pages' do
  scenario 'can load root page' do
    visit root_path

    expect(page.status_code).to eq 200
    expect(page).to have_content('U.S. Web Design Standards')
  end
end
