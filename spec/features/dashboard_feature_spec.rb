require 'rails_helper'

feature "Dashboard path", js: true do
  it "displays welcome text in home path" do
    visit root_path
    page.should have_content('Welcome')
  end
end