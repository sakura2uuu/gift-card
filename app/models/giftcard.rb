class Giftcard < ActiveRecord::Base
    belongs_to :user
    validates :user_id, presence: true
    validates :title, presence: true
    validates :message, presence: true
end
