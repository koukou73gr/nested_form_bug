class Station < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :code
  has_many :records, :dependent => :destroy
end
