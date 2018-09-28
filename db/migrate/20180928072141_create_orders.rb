class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :name_kana
      t.string :email
      t.string :tel
      t.integer :schedule
      t.text :message

      t.timestamps
    end
  end
end
