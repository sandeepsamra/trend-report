class Article < ActiveRecord::Base

  validates :title, uniqueness: true

  validates :url, uniqueness: true

  validates :image, uniqueness: true

   def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end

end