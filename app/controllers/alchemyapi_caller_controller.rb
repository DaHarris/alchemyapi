class AlchemyapiCallerController < ApplicationController

  def get
    input = params['text']
    analyzer = Sentiment.new
    render json: { score: analyzer.get(input), text: input }
  end
end
