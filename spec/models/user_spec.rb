require 'rails_helper'

describe User, type: :model do
  it {is_expected.to have_many :giftcards}
  it {is_expected.to validate_presence_of :name}
  it {is_expected.to validate_presence_of :email}
  it {is_expected.to validate_presence_of :gender}
  it {is_expected.to validate_inclusion_of(:gender).in_array(%w(Male Female))}

  it 'has a valid factory' do
    expect(build(:user).valid?).to eq true
  end
end
