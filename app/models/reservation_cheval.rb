class ReservationCheval < ApplicationRecord
  belongs_to :cheval, optional: true
  belongs_to :user, optional: true
  belongs_to :cour, optional: true
  def title
    
  end
end
