require 'spec_helper'

feature 'Hello World' do
  scenario 'can access standard uswds css' do
    visit '/assets/uswds/all.css'

    expect(page.status_code).to eq 200
  end

  scenario 'can access overrides for uswds css' do
    visit '/assets/uswds_overrides/all.css'

    expect(page.status_code).to eq 200
  end
end
