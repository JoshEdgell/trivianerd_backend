class CreateBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :badges do |t|
      t.references :user, foreign_key: true
      t.references :achievement, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
