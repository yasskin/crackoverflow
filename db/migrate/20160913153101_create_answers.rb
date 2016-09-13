class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :response
      t.integer :user_id
      t.integer :question_id
      t.boolean :selected, :default => false

      t.timestamps
    end
  end
end
