class Cour < ApplicationRecord
  belongs_to :user
  has_many :reservationchevals, dependent: :destroy
end
