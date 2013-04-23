class AddDefaultAuthersLocations < ActiveRecord::Migration
  def up
    (1..10).each do |i|
      Author.create(:name => "Author_#{i}")
      Location.create(:name => "Location_#{i}")
    end
  end

  def down
  end
end
