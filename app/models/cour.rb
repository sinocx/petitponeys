class Cour < ApplicationRecord
  belongs_to :user

    rails_admin do
	    configure :user do
	      :custom_label_method
	    end
	end
	def custom_label_method
		self.email
	end
	def title
    	"#{start_time} - #{nom}"
  	end
end