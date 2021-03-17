require 'rails_helper'

RSpec.describe "score_types/show", type: :view do
  before(:each) do
    @score_type = assign(:score_type, ScoreType.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
