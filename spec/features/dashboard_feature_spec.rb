require 'rails_helper'

feature "Dashboard path", js: true do

  before do
    visit root_path
  end

  it "displays welcome text in home path" do
    expect(page).to have_content('Welcome')
  end

  it "has link to add new box" do
    expect(page).to have_link("Add box");
  end
end