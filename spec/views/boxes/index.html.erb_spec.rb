require 'rails_helper'

RSpec.describe "boxes/index", type: :view do
  before(:each) do
    assign(:boxes, [
      Box.create!(
        :name => "",
        :private => "",
        :description => ""
      ),
      Box.create!(
        :name => "",
        :private => "",
        :description => ""
      )
    ])
  end

  it "renders a list of boxes" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
