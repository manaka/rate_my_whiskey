require 'rails_helper'

RSpec.describe Whiskey, type: :model do
  it 'has a valid factory' do
    expect(build(:whiskey)).to be_valid
  end
  let(:whiskey) { create(:whiskey) }
  let(:whiskey_glenfiddich) { create(:whiskey_glenfiddich) }

  describe 'ActiveModel validations' do
    it { expect(whiskey).to validate_presence_of(:title) }
    # it { expect(whiskey).to validate_inclusion_of(:title).in_range(0..5) }
    it { expect(whiskey).to validate_length_of(:title).is_at_least(1).is_at_most(250) }
  end

  describe 'ActiveRecord associations' do
    it { expect(whiskey).to have_many(:scores) }
    it { expect(whiskey).to have_many(:scores).dependent(:destroy) }
    it { expect(whiskey).to have_many(:score_types).through(:scores) }
  end

  describe 'search' do
    it 'should find one wiskey' do
      whiskeys = Whiskey.search('glenlivet')
      expect(whiskeys).to eq([Whiskey.first])
    end
    it 'should find two wiskeys' do
      whiskeys = Whiskey.search('glenlivet')
      expect(whiskeys).to eq([[whiskey, whiskey_glenfiddich]])
    end
    it 'should find nothing' do
      whiskeys = Whiskey.search('QWE@!@!@#!@#12123')
      expect(whiskeys).to eq([])
    end
  end
end
