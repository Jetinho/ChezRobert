class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attachment :photo, :farm_photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
