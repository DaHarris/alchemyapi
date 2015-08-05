class DashboardController < ApplicationController

  def index
    tweets = TweetFetcher.new
    @outgoing = tweets.outgoing
    @incoming = tweets.incoming
  end
end
