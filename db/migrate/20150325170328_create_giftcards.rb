class CreateGiftcards < ActiveRecord::Migration
  def change
    create_table :giftcards do |t|
      t.string :title
      t.text :message
      
      t.timestamps null: false
    end
  end
end
