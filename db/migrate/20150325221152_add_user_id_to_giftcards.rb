class AddUserIdToGiftcards < ActiveRecord::Migration
  def change
    add_column :giftcards, :user_id, :integer
    add_index :giftcards, :user_id
  end
end
