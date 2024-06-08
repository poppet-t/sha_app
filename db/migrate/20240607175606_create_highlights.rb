class CreateHighlights < ActiveRecord::Migration[7.1]
  def change
    create_table :highlights do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
