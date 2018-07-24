class CreateRolesPermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions_roles do |t|
      t.references :permission, foreign_key: true
      t.references :role, foreign_key: true
    end
  end
end
