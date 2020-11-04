class Cour < ApplicationRecord
  belongs_to :moniteur
  has_many :reservationchevals, dependent: :destroy
  accepts_nested_attributes_for :moniteur
end
