require 'open-uri'

class FoodScraper

  def scrape_bonappetit
    @bon_app = Nokogiri::HTML(open("http://www.bonappetit.com/entertaining-style/trends-news"))
    @bon_app.css('div.single-article').each do |article|
      image = article.css('div.article-thumb-container a img').attr('src')
      title = article.css('div.article-details-container h3.result-title a').text
      url = article.css('div.article-details-container h3.result-title a').attr('href')
      Article.create(
        url: url.value,
        image: image.value,
        title: title,
        source: "Bon Appetit",
        category: "food"
      )
    end
  end

  def scrape_foodnetwork
    @food_network = Nokogiri::HTML(open("http://www.foodnetwork.ca/all-articles"))
    @food_network.css('ul.post-list li.post-item').each do |article|
      image = article.css('a.post-link div.post-imageContainer img.post-image').attr('data-src')
      title = article.css('div.post-info h3.post-infoTitle a.post-link').text
      link = "http://www.foodnetwork.ca"
      url = "#{link}#{article.css('div.post-info h3.post-infoTitle a.post-link').attr('href')}"
      Article.create(
        url: url,
        image: image.value,
        title: title,
        source: "Food Network",
        category: "food"
      )
    end
  end

  def scrape_canliving
    @canadian_living = Nokogiri::HTML(open("http://www.canadianliving.com/food"))
    @canadian_living.css('ul.listing li').each do |article|
      image = article.css('a figure img').attr('src')
      title = article.css('a h2').text
      url = article.css('a').attr('href')
      Article.create(
        url: url.value,
        image: image.value,
        title: title,
        source: "Canadian Living",
        category: "food"
      )
    end
  end

  def scrape_organiclife
    @organic_life = Nokogiri::HTML(open("http://www.rodalesorganiclife.com/food"))
    @organic_life.css('div.channel-image').each do |article|
      image = article.css('div.img a picture img').attr('src')
      title = article.css('div.channel-content div.article-title a').text
      link = "http://www.rodalesorganiclife.com"
      url = "#{link}#{article.css('div.channel-content div.article-title a').attr('href')}"
      Article.create(
        url: url,
        image: image.value,
        title: title,
        source: "Organic Life",
        category: "food"
      )
    end
  end

  def scrape_torontolife
    @toronto_life = Nokogiri::HTML(open("http://torontolife.com/category/food/"))
    @toronto_life.css('article.feed-card.feed-card-page.feed-card-page--split').each do |article|
      image = article.css('div.feed-card-page--split__image a img').attr('src')
      title = article.css('div.feed-card-page--split__meta h2.feed-card-page--split__headline a').text
      url = article.css('div.feed-card-page--split__meta h2.feed-card-page--split__headline a').attr('href')
      Article.create(
        url: url.value,
        image: image.value,
        title: title,
        source: "Toronto Life",
        category: "food"
      )
    end
  end

end