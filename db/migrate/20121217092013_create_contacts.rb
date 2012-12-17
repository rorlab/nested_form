class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :person
      t.string :zip_code
      t.string :address
      t.string :phone
      t.string :fax

      t.timestamps
    end
    add_index :contacts, :person_id
  end
end
