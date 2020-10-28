class Cour < ApplicationRecord
  belongs_to :moniteur
  has_many :moniteurs
  accepts_nested_attributes_for :moniteur
end
