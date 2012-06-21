class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :date, :records_attributes
  has_many :records, :inverse_of => :event, :dependent => :destroy

  accepts_nested_attributes_for :records, :allow_destroy => true
end
