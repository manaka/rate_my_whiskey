require 'rails_helper'

RSpec.describe ScoreType, type: :model do
  it 'has a valid factory' do
    expect(build(:score_type)).to be_valid
  end
  let(:score_type) { create(:score_type) }

  describe 'ActiveModel validations' do
    it { expect(score_type).to validate_presence_of(:name) }
    it { expect(score_type).to validate_length_of(:name).is_at_least(1).is_at_most(250) }
  end

  describe 'ActiveRecord associations' do
    it { expect(score_type).to have_many(:scores) }
    it { expect(score_type).to have_many(:scores).dependent(:destroy) }
  end

end
