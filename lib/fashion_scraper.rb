require 'open-uri'

class FashionScraper

  def scrape_www
    www = Nokogiri::HTML(open("http://www.whowhatwear.com/section/fashion-trends"))
    www.css('article.promo.promo-feed.wow.promoIn').each do |article|
      image = article.css('div.promo-feed-img img').attr('src')
      title = article.css('div.promo-feed-headline a h3').text
      url = "http://www.whowhatwear.com"
      link = "#{url}#{article.css('div.promo-feed-headline a')[1].attr('href')}"
      Article.create(
        url: link,
        image: image.value,
        title: title,
        source: "Who What Wear",
        category: "wfashion"
      )
    end
  end

  def scrape_refinery_29
    refinery = Nokogiri::HTML(open("http://www.refinery29.com/trends"))
    refinery.css('article.collection-story-container').each do |article|  
      image = article.css('figure.collection-story-container-figure a.ga-trackable img').attr('src')
      title = article.css('div.collection-story-details h2.collection-story-headline.ga-trackable a').text
      url = "http://www.refinery29.com"
      link = "#{url}#{article.css('div.collection-story-details h2.collection-story-headline.ga-trackable a').attr('href')}"
      Article.create(
        url: link,
        image: image.value,
        title: title,
        source: "Refinery 29",
        category: "wfashion"
      )
    end
  end

  def scrape_elle
    elle = Nokogiri::HTML(open("http://www.ellecanada.com/fashion/trends"))
    sections = elle.css('div#primary ul.subchannel-listing li.first.photo') && elle.css('div#primary ul.subchannel-listing li.photo')
    sections.each do |article|
      image = article.css('div.bloc div.thumb a img').attr('src')
      title = article.css('div.bloc h3 a').text
      link = article.css('div.bloc h3 a').attr('href')
      Article.create(
        url: link.value,
        image: image.value,
        title: title,
        source: "Elle Canada",
        category: "wfashion"
      )
    end
  end

  def scrape_fashion_spot
    fspot = Nokogiri::HTML(open("http://www.thefashionspot.ca/tag/fashion-trend"))
    fspot.css('article.article.clearfix').each do |article|
      image = article.css('a.category-article-thumb img').attr('src')
      title = article.css('div.category-article-main header h2 a.post-title').text
      link = article.css('div.category-article-main header h2 a.post-title').attr('href')
      Article.create(
        url: link.value,
        image: image.value,
        title: title,
        source: "Fashion Spot",
        category: "wfashion"
      )
    end
  end

  def scrape_glamour
    glamour = Nokogiri::HTML(open("http://www.glamour.com/fashion/outfit-ideas"))
    glamour.css('div.g-search-item.g-article_v2').each do |article|
      url = "http://www.glamour.com"
      image = "#{url}#{article.css('div.g-search-content div.g-search-media a img').attr('src')}"
      title = article.css('div.g-search-content div.g-search-body a span').text
      link = "#{url}#{article.css('div.g-search-content div.g-search-body a.g-title').attr('href')}"
      Article.create(
        url: link,
        image: image,
        title: title,
        source: "Glamour",
        category: "wfashion"
      )
    end
  end
  
  #menswear category
  def scrape_fashionbeans
    fashionbeans = Nokogiri::HTML(open("http://www.fashionbeans.com/category/mens-fashion-trends/"))
    fashionbeans.css('div.catArticles').each do |article|
      image = article.css('a.left.relative img').attr('src')
      title = article.css('h2 a').attr('title')
      link = article.css('h2 a').attr('href')

      Article.create(
        url: link.value,
        image: image.value,
        title: title.value,
        category: "mfashion",
        source: "Fashion Beans"
      )
    end
  end

  def scrape_sharp
    sharp = Nokogiri::HTML(open("http://sharpmagazine.com/category/style/"))
    sharp.css('div.post.medium-post.whole-click').each do |article|
      image = article.css('picture img').attr('src')
      title = article.css('div.post-copy h2').text
      link = article.css('a')[0].attr('href')
      
      Article.create(
        url: link,
        image: image.value,
        title: title,
        category: "mfashion",
        source: "Sharp for Men"
      )
    end
  end
end
