require 'rails_helper'

RSpec.describe "whiskeys/new", type: :view do
  before(:each) do
    assign(:whiskey, Whiskey.new(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders new whiskey form" do
    render

    assert_select "form[action=?][method=?]", whiskeys_path, "post" do

      assert_select "input[name=?]", "whiskey[title]"

      assert_select "textarea[name=?]", "whiskey[description]"
    end
  end
end
