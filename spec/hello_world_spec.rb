require 'rails_helper'

RSpec.describe 'Hello world', js: true, type: :feature do
  scenario 'index page' do
    visit hello_world_index_path
    expect(page).to have_content('Hello, world!')
  end
end
