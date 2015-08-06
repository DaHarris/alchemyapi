class AlchemyapiCallerController < ApplicationController

  def getSentiment
    input = params['text']
    analyzer = Alchemyapi::Sentiment.new
    render json: { score: analyzer.get(input), text: input }
  end

  def getKeywords
    input = params['text']
    analyzer = Alchemyapi::Keywords.new
    render json: { keywords: analyzer.get(input), text: input}
  end
end
