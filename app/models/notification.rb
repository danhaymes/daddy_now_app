class Notification < ApplicationRecord
  has_many :users, through: :user_notifications
  
end
