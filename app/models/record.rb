class Record < ActiveRecord::Base
  attr_accessible :station_id, :station_attributes, :epi_dist, :duration
  belongs_to :event, :inverse_of => :records
  belongs_to :station, :inverse_of => :records

  accepts_nested_attributes_for :station

end
