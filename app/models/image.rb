class Image < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :post
end
