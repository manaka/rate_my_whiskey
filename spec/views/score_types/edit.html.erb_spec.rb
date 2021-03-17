require 'rails_helper'

RSpec.describe "score_types/edit", type: :view do
  before(:each) do
    @score_type = assign(:score_type, ScoreType.create!(
      name: "MyString"
    ))
  end

  it "renders the edit score_type form" do
    render

    assert_select "form[action=?][method=?]", score_type_path(@score_type), "post" do

      assert_select "input[name=?]", "score_type[name]"
    end
  end
end
