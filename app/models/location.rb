class Location < ActiveRecord::Base
  attr_accessible :desc, :name
  has_many:books

end
