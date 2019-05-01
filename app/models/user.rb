class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_secure_password
  # has_many :images
  # has_many :comments
  # has_many :posts
  # belongs_to :reg_pro_list
  # belongs_to :baby_name
  # has_many :notifications, through: :user_notifications
  # belongs_to :baby_growth
  # has_one :profile_picture

  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true 
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :due_date, presence: true 
end
