require 'rails_helper'

RSpec.describe "boxes/new", type: :view do
  before(:each) do
    assign(:box, Box.new(
      :name => "",
      :private => "",
      :description => ""
    ))
  end

  it "renders new box form" do
    render

    assert_select "form[action=?][method=?]", boxes_path, "post" do

      assert_select "input#box_name[name=?]", "box[name]"

      assert_select "input#box_private[name=?]", "box[private]"

      assert_select "input#box_description[name=?]", "box[description]"
    end
  end
end
