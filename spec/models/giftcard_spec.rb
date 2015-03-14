require 'rails_helper'

describe Giftcard, type: :model do
  it {is_expected.to belong_to :user}
  it {is_expected.to validate_presence_of :user_id}
  it {is_expected.to validate_presence_of :title}
  it {is_expected.to validate_presence_of :message}

  it 'has a valid factory' do
    expect(build(:giftcard).valid?).to eq true
  end
end
