class Music < ActiveRecord::Base
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
end
