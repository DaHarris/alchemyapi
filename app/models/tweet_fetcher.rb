class TweetFetcher

  def initialize
    @twitter_handle = "AlchemyAPI"
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_KEY"]
      config.consumer_secret     = ENV["TWITTER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
    end
  end

  def outgoing
    @client.user_timeline(@twitter_handle)
  end

  def incoming
    @client.search(@twitter_handle, result_type: "recent").take(20)
  end
end
