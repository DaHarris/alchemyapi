class AlchemyapiCallerController < ApplicationController

  def getSentiment
    input = params['text']
    analyzer = Alchemyapi::Sentiment.new
    render json: { score: analyzer.get(input), text: input }
  end
end
