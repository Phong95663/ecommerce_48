class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.string :remember_digest
      t.string :password_digest
      t.integer :permission, default: 3
      t.string :activation_digest
      t.boolean :activated, default: false
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_send_at

      t.timestamps
    end
  end
end
