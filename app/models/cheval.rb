class Cheval < ApplicationRecord
	
	validates :nom, uniqueness: true, presence: true
	validates :naissance , presence: true
	validates :description, presence: true
	has_many :reservation_chevals, dependent: :destroy
	has_many :cours, through: :reservation_chevals

	scope :available_now, -> do
	    unavailable_horses_ids = left_joins(:cours).
	    where(
	      'end_time < :now',
	      now: Time.zone.now
	    ).pluck(:id)    
	    where.not(id: unavailable_horses_ids)
  	end

  	def to_label
  		"#{id} - #{nom}"
  	end
  	
  	def age
  		((Time.zone.now - naissance.to_time) / 1.year.seconds).floor
  	end
  	def title
    	"#{id} - #{nom}"
  	end
end
