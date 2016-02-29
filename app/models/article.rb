class Article < ActiveRecord::Base

  validates :title, uniqueness: true

  validates :url, uniqueness: true

  validates :image, uniqueness: true

  scope :search, -> (query) { where(['title LIKE ? OR source LIKE ?', "%#{query}%", "%#{query}%"])}

end