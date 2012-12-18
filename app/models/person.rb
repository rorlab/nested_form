class Person < ActiveRecord::Base
  attr_accessible :gender, :mobile, :name, :contact_attributes, :communications_attributes
  has_one :contact
  has_many :communications

  accepts_nested_attributes_for :contact
  accepts_nested_attributes_for :communications, :allow_destroy => true, :reject_if => :all_blank

  validates :name, :presence => true
end
