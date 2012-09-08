class Carpetum < ActiveRecord::Base
  attr_accessible :anoingreso, :codigo, :docid, :nombre, :semestre
  has_many :materium
  has_one :pensum
end
