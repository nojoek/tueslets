class Event < ActiveRecord::Base
  attr_accessible :description, :loc1, :loc2, :loc3, :loc4, :time1, :time2, :time3, :time4, :title
end
