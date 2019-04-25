class CreateTeamFixtures < ActiveRecord::Migration[5.2]
  def change
    create_table :team_fixtures do |t|
      t.references :fixture, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
