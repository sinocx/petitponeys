class Cheval < ApplicationRecord
	
	validates :nom, uniqueness: true, presence: true
	validates :age , presence: true
	validates :description, presence: true




end
