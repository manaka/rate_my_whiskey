require 'rails_helper'

RSpec.describe "score_types/index", type: :view do
  before(:each) do
    assign(:score_types, [
      ScoreType.create!(
        name: "Name"
      ),
      ScoreType.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of score_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
