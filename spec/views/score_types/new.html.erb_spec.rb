require 'rails_helper'

RSpec.describe "score_types/new", type: :view do
  before(:each) do
    assign(:score_type, ScoreType.new(
      name: "MyString"
    ))
  end

  it "renders new score_type form" do
    render

    assert_select "form[action=?][method=?]", score_types_path, "post" do

      assert_select "input[name=?]", "score_type[name]"
    end
  end
end
