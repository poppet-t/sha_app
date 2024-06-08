class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :role
      t.string :event
      t.string :period

      t.timestamps
    end
  end
end
