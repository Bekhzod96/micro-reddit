class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 2, maximum: 100 }
  validates :body, presence: true, length: { minimum: 10, maximum: 3000 }
end
