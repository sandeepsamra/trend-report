class Favourite < ActiveRecord::Base

  belongs_to :user

  validates :title, uniqueness: true

  validates :url, uniqueness: true

  validates :image, uniqueness: true

  def self.search(query)
    where("title ilike ?", "%#{query}%")
  end
  
end