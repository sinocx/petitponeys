class Cheval < ApplicationRecord
	
	validates :nom, uniqueness: true, presence: true
	validates :naissance , presence: true
	validates :description, presence: true

end
