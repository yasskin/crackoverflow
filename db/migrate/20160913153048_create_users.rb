class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :password_digest
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
