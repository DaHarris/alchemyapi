class StackFetcher

  def initialize
    @conn = Faraday.new(:url => 'https://api.stackexchange.com') do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
    end
  end

  def get
    response = @conn.get do |request|
      request.url '/2.2/search/excerpts'
      request.params['order'] = 'desc'
      request.params['sort'] = 'creation'
      request.params['q'] = 'alchemyapi'
      request.params['site'] = 'stackoverflow'
    end
    return JSON.parse(response.body)["items"]
  end
end
