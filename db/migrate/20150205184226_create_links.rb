class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :vote, default: 0
      t.integer :user_id
      t.string :title

      t.timestamps null: false
    end
  end
end
