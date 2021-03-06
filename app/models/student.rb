class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations, :dependent => :destroy
  has_many :works, through: :reservations
  
  validates :name, presence: true
  validates :number, presence: true,uniqueness: true
end
