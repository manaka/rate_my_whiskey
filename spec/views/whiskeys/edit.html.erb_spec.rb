require 'rails_helper'

RSpec.describe "whiskeys/edit", type: :view do
  before(:each) do
    @whiskey = assign(:whiskey, Whiskey.create!(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit whiskey form" do
    render

    assert_select "form[action=?][method=?]", whiskey_path(@whiskey), "post" do

      assert_select "input[name=?]", "whiskey[title]"

      assert_select "textarea[name=?]", "whiskey[description]"
    end
  end
end
