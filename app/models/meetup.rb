class Meetup < ActiveRecord::Base
  attr_accessible :date, :description, :direction, :place
end
