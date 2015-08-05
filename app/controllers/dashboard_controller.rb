class DashboardController < ApplicationController

  def index
    tweets = TweetFetcher.new
    @outgoing = tweets.outgoing
    @incoming = tweets.incoming

    stacks = StackFetcher.new
    @references = stacks.get
  end
end
