class Planner < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :phone, :zip
end
