class ReservationCheval < ApplicationRecord
  belongs_to :cheval,:validate => false
  belongs_to :user
  belongs_to :cour
end
