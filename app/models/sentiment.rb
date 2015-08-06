class Sentiment

  def initialize
    @conn = Faraday.new(:url => 'https://access.alchemyapi.com') do |faraday|
      faraday.request :url_encoded
      faraday.adapter :excon
    end
  end

  def get
    response = @conn.get do |request|
      request.url '/calls/text/TextGetTextSentiment'
      request.params['apikey'] = ENV["ALCHEMYAPI_KEY"]
      request.params['outputMode'] = 'json'
      request.params['text'] = 'hah'
    end
    return JSON.parse(response.body)['docSentiment']
  end
end
