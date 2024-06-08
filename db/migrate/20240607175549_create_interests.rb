class CreateInterests < ActiveRecord::Migration[7.1]
  def change
    create_table :interests do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
