class Movie < ApplicationRecord
  validates :title, presence: true
  validates :duration, presence: true
  validates :year, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
end
