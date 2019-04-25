class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.references :fixture, foreign_key: true
      t.references :player, foreign_key: true
      t.boolean :own_goal

      t.timestamps
    end
  end
end
