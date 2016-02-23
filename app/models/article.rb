class Article < ActiveRecord::Base

  validates :title, uniqueness: true

  validates :url, uniqueness: true

  validates :image, uniqueness: true

  def scrapeWWW
    www = Nokogiri::HTML(open("http://www.whowhatwear.com/section/fashion-trends"))
    www.css('article.promo.promo-feed.wow.promoIn').each do |article|
      #create new article with following info as object's attributes 
      image = article.css('div.promo-feed-img img').attr('src')
      title = article.css('div.promo-feed-headline a h3').text
      url = "http://www.whowhatwear.com"
      link = "#{url}#{article.css('div.promo-feed-headline a')[1].attr('href')}"
    end
  end

  def scrapeRefinery29
    refinery = Nokogiri::HTML(open("http://www.refinery29.com/trends"))
    refinery.css('article.collection-story-container').each do |article|
      #create new article with following info as object's attributes    
      image = article.css('figure.collection-story-container-figure a.ga-trackable img').attr('src')
      title = article.css('div.collection-story-details h2.collection-story-headline.ga-trackable a').text
      url = "http://www.refinery29.com"
      link = "#{url}#{article.css('div.collection-story-details h2.collection-story-headline.ga-trackable a').attr('href')}"
    end
  end



end