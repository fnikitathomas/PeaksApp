class User < ApplicationRecord
  has_many :tips
  has_many :climbs
  has_many :peaks, through: :climbs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
