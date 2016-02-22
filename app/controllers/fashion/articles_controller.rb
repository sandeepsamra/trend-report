class Fashion::ArticlesController < ApplicationController

  def index
    #display all articles with category "fashion"
    @page = MetaInspector.new('http://www.whowhatwear.com/section/fashion-trends')
  end

  def create
    #display scraped content as "article" object - scraped content will be article params
    #make sure article is only being saved if it doesn't already exist - validations?
    #figure out how to keep images and urls together in same object
    #loop through each div, and create new Article object (attributes = elements in div)
    #background worker to scrape at regular intervals?

    #using nokogiri
    # @page.css('div class').each do |x|
    #   Article.new(url: @page.css('div class selector')['href'])
    # end

  end

end