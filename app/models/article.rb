class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 10, maximum: 70 }
  validates :content, presence: true, length: { minimum: 10, maximum: 400 }
end
