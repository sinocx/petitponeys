class Cour < ApplicationRecord
  belongs_to :moniteur
   
  accepts_nested_attributes_for :moniteur
end
