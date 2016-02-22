require 'open-uri'

class Fashion::ArticlesController < ApplicationController

  def index
    #display all articles with category "fashion"
    @www = Nokogiri::HTML(open("http://www.whowhatwear.com/section/fashion-trends"))
    @fspot = Nokogiri::HTML(open("http://www.thefashionspot.ca/tag/fashion-trend"))
  end

  def create
    #display scraped content as "article" object - scraped content will be article params
    #make sure article is only being saved if it doesn't already exist - validations?
    #figure out how to keep images and urls together in same object
    #loop through each div, and create new Article object (attributes = elements in div)
    #background worker to scrape at regular intervals?

    #page = Nokogiri::HTML(open("http://www.whowhatwear.com/section/fashion-trends"))

    # @page.css('article.promo.promo-feed.wow.promoIn').each do |article|
    #   article.css('div.promo-feed-img img').attr('src')
    #   article.css('div.promo-feed-headline a h3').text
    #   url = "http://www.whowhatwear.com"
    #   "#{url}#{article.css('div.promo-feed-headline a')[1].attr('href')}"
    # end

  end

end