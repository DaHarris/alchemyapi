class DashboardController < ApplicationController

  def index
    tweets = TweetFetcher.new
    @incoming = tweets.incoming

    stacks = StackFetcher.new
    @references = stacks.get
  end
end
