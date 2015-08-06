class Alchemyapi::Keywords

  def initialize
    @conn = Faraday.new(:url => 'https://access.alchemyapi.com') do |faraday|
      faraday.request :url_encoded
      faraday.adapter :excon
    end
  end

  def get(input)
    response = @conn.get do |request|
      request.url '/calls/text/TextGetRankedKeywords'
      request.params['apikey'] = ENV["ALCHEMYAPI_KEY"]
      request.params['outputMode'] = 'json'
      request.params['text'] = input
      request.params['maxRetrieve'] = 5
    end
    return JSON.parse(response.body)['keywords']
  end
end
