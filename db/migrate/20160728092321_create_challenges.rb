class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :question
      t.string :type
      t.string :level

      t.timestamps
    end
  end
end
