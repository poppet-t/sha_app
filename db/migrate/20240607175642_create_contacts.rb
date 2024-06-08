class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :contact_type
      t.string :contact_url

      t.timestamps
    end
  end
end
