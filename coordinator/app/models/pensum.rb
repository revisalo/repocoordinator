class Pensum < ActiveRecord::Base
  attr_accessible :ano, :semestre
  has_many :materium
  belongs_to :maestrium
end
