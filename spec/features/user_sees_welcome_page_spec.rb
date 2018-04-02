require 'rails_helper'

describe 'welcome page' do
  scenario 'user sees a welcome page when visiting root' do

    visit '/'

    expect(page).to have_content('Welcome to Wanderer Beware')
  end
end
