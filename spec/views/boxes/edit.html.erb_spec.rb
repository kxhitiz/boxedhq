require 'rails_helper'

RSpec.describe "boxes/edit", type: :view do
  before(:each) do
    @box = assign(:box, Box.create!(
      :name => "",
      :private => "",
      :description => ""
    ))
  end

  it "renders the edit box form" do
    render

    assert_select "form[action=?][method=?]", box_path(@box), "post" do

      assert_select "input#box_name[name=?]", "box[name]"

      assert_select "input#box_private[name=?]", "box[private]"

      assert_select "input#box_description[name=?]", "box[description]"
    end
  end
end
