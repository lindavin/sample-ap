class StaticPagesController < ApplicationController
  def home
      # code-snippet from: https://medium.com/@josheche/parsing-an-rss-feed-in-ruby-on-rails-58b23cfb5b25
      require 'rss'
      require 'open-uri'
      @rss_feeds = RssFeed.all
      @rss_results = []
      @rss_feeds.each do |feed|
        puts feed.name
        url = feed.link
        rss = RSS::Parser.parse(open(url).read, false).items[0..4]
        top_five_results = []
        rss.each do |result|
          result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
          top_five_results.push(result)
        end
        @rss_results.push({ source: feed.name, top_five_results: top_five_results})
      end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
