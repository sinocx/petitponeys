class ReservationCheval < ApplicationRecord
  belongs_to :cheval
  belongs_to :user
  belongs_to :cour
end
