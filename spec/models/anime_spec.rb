require 'spec_helper'

describe Anime do

  describe 'validations' do
    let!(:anime) { create(:anime, creator: creator) }
    let(:creator) { { 'programmer' => 'nekova' } }


    it 'is valid with title and creator' do
      expect(anime).to be_valid
    end

    it 'is invalid without a title' do
      expect(build(:anime, title: nil, creator: creator)).to have(1).errors_on(:title)
    end

    it 'is invalid without a creator' do
      expect(build(:anime)).to have(1).errors_on(:creator)
    end

    it 'is invalid with a duplicate title' do
      expect(build(:anime, creator: { 'designer' => 'nekova'})).to have(1).errors_on(:title)
    end

    it 'is invalid with a duplicate creator' do
      expect(build(:anime, title: 'not animatch', creator: creator)).to have(1).errors_on(:creator)
    end
  end
end
