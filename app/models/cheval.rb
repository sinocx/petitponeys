class Cheval < ApplicationRecord
	
	validates :nom, uniqueness: true, presence: true
	validates :naissance , presence: true
	validates :description, presence: true
	has_many :reservationchevals, dependent: :destroy
end
