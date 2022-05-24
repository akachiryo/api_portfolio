class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :password_digest, :null => false
      t.text :introduction
      t.string :avatar

      t.timestamps
    end
  end
end
