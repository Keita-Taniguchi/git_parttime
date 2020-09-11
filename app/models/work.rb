class Work < ApplicationRecord
  has_many :reservations
  has_many :students, through: :reservations
  
  def start_date
    start.strftime("%Y年%m月%d日 %H時%M分")
  end
end
