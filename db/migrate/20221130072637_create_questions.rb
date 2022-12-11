class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :body

      t.references :test, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
