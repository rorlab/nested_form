class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.belongs_to :person
      t.belongs_to :profile_type
      t.string :access_point

      t.timestamps
    end
    add_index :communications, :person_id
    add_index :communications, :profile_type_id
  end
end
