class Materium < ActiveRecord::Base
  attr_accessible :codigo, :nombre
  belongs_to :pensum
end
