require 'open-uri'

class Fashion::ArticlesController < ApplicationController

  def index
    #display all articles with category "fashion"
    #@articles = Article.all
    # @www = Nokogiri::HTML(open("http://www.whowhatwear.com/section/fashion-trends"))
    # @refinery = Nokogiri::HTML(open("http://www.refinery29.com/trends"))
    # @elle = Nokogiri::HTML(open("http://www.ellecanada.com/fashion/trends"))
    # @fspot = Nokogiri::HTML(open("http://www.thefashionspot.ca/tag/fashion-trend"))
    # @glamour = Nokogiri::HTML(open("http://www.glamour.com/fashion/outfit-ideas"))
    # @fashionbeans = Nokogiri::HTML(open("http://www.fashionbeans.com/category/mens-fashion-trends/"))
    # @sharp = Nokogiri::HTML(open("http://sharpmagazine.com/category/style/"))
  end

  def create
    #display scraped content as "article" object - scraped content will be article params
    #make sure article is only being saved if it doesn't already exist - validations?
    #figure out how to keep images and urls together in same object
    #loop through each div, and create new Article object (attributes = elements in div)
    #background worker to scrape at regular intervals?
  end

end