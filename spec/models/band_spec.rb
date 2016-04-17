require 'rails_helper'

RSpec.describe Band, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:musical_genre) }
  it { is_expected.to validate_presence_of(:site) }
  it { is_expected.to have_many(:musics)}

  context "is valid" do
    it 'has a valid factory' do
      expect(build(:band)).to be_valid
    end
  end

  context "is invalid" do
    it 'without name' do
      band = build(:band, name: nil)
      band.valid?
      expect(band.errors[:name]).to include("can't be blank")
    end

    it 'without musical_genre' do
      band = build(:band, musical_genre: nil)
      band.valid?
      expect(band.errors[:musical_genre]).to include("can't be blank")
    end

    it 'without site' do
      band = build(:band, site: nil)
      band.valid?
      expect(band.errors[:site]).to include("can't be blank")
    end
  end

end
