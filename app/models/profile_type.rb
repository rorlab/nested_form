class ProfileType < ActiveRecord::Base
  attr_accessible :comm_type

  has_many :communications
end
