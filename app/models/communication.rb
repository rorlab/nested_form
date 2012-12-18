class Communication < ActiveRecord::Base
  belongs_to :person
  belongs_to :profile_type
  attr_accessible :profile_type_id, :access_point
end
