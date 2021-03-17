require 'rails_helper'

RSpec.describe "whiskeys/index", type: :view do
  before(:each) do
    assign(:whiskeys, [
      Whiskey.create!(
        title: "Title",
        description: "MyText"
      ),
      Whiskey.create!(
        title: "Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of whiskeys" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
