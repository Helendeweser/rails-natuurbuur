class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiences
  has_many :favourites
  has_many :likes
  has_many :solutions, through: :favourites


  validates :username, presence: true
  validates :email, :username, uniqueness: true

  # attr_writer :login

  # def login
  #   @login || self.username || self.email
  # end
end
