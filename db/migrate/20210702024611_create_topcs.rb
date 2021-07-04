class CreateTopcs < ActiveRecord::Migration[5.2]
  def change
    create_table :topcs do |t|
      t.integer :user_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end