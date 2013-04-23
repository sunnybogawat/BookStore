class Book < ActiveRecord::Base
  attr_accessible :name, :price, :quantity,:author_id,:location_id
  belongs_to :author
  belongs_to :location
  validates :name, :presence => { :message => "Please enter a book name" },:uniqueness =>{:scope=> :author_id,:message=>"Book name has already been taken"}
  validates :price, :presence => { :message => "Please enter a book price" }
  validates :quantity, :presence => { :message => "Please enter a book quantity" }
  validates_numericality_of :quantity, :only_integer => true
  validates_numericality_of :price
  validates :location_id, :presence => { :message => "Please enter a book location" }
  validates :author_id, :presence => { :message => "Please enter a book author" }

end
