class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :body
      t.string :correct
      t.references :question, foreign_key: true, index: true, null: false
      t.timestamps
    end
  end
end
