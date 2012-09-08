class Maestrium < ActiveRecord::Base
  attr_accessible :codigo
  has_many :pensum
end
