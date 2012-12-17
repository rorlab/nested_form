class Person < ActiveRecord::Base
  attr_accessible :gender, :mobile, :name, :contact_attributes
  has_one :contact, :dependent => :destroy

  accepts_nested_attributes_for :contact

  validates :name, :presence => true
end
