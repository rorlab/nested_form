class Contact < ActiveRecord::Base
  belongs_to :person
  attr_accessible :person_id, :address, :fax, :phone, :zip_code
end
