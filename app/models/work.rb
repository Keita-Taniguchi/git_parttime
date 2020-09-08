class Work < ApplicationRecord
   has_many :reservations
   has_many :students ,through: :reservations, source: :student
end
