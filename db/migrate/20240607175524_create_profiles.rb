class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :username, null: false
      t.string :short_description
      t.text :about
      t.integer :connections, default: 0

      t.timestamps
    end
  end
end
