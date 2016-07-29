class CreateTodaychallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :todaychallenges do |t|
      t.text :question

      t.timestamps
    end
  end
end
