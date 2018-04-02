require 'rails_helper'

describe 'Validations' do
  scenario 'user sees a welcome page when visiting root' do

    visit '/'

    expect(page).to have_content('Welcome to Wanderer Beware')
  end
end
