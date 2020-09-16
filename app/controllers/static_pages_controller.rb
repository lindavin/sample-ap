class StaticPagesController < ApplicationController
  def home
      # code-snippet from: https://medium.com/@josheche/parsing-an-rss-feed-in-ruby-on-rails-58b23cfb5b25
      require 'rss'
      require 'open-uri'
      url = 'https://www.mintpressnews.com/rss/'
      rss = RSS::Parser.parse(open(url).read, false).items[0..5]
      @rss_results = []
      rss.each do |result|
      result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
      @rss_results.push(result)
      end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
