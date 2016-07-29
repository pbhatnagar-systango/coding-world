class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :ans
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
