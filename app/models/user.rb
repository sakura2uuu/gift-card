class User < ActiveRecord::Base
    has_many :giftcards
    validates :name, presence: true
    validates :email, presence: true
    validates :gender, presence: true
    validates_inclusion_of :gender, :in => %w(Male Female)
end
