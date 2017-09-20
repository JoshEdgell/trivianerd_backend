class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :books_correct
      t.integer :books_incorrect
      t.integer :film_correct
      t.integer :film_incorrect
      t.integer :music_correct
      t.integer :music_incorrect
      t.integer :television_correct
      t.integer :television_incorrect
      t.integer :games_correct
      t.integer :games_incorrect
      t.integer :nature_correct
      t.integer :nature_incorrect
      t.integer :computers_correct
      t.integer :computers_incorrect
      t.integer :sports_correct
      t.integer :sports_incorrect
      t.integer :history_correct
      t.integer :history_incorrect
      t.integer :animals_correct
      t.integer :animals_incorrect
      t.integer :total_correct
      t.integer :total_incorrect
      t.integer :total_score

      t.timestamps
    end
  end
end
