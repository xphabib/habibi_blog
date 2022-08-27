class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :display_name
      t.string :website
      t.text :biographical_Info
      t.string :sessions
      t.integer :role_id
      t.timestamps
    end
  end
end
