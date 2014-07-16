class FoodsController < ApplicationController
  include FoodsHelper

  def index
    @parsed = yelp_api
    # binding.pry
    # step1 : i added a gem called oauth inside the Gemfile file.
      # noticed that I did not add gem json and rubygems because Rails 
      # already has it
    # the code below has been moved to app/helpers/foods_helper.rb
    # consumer_key = 'fRaHH5Mu6S5cERbTaBA9mw'
    # consumer_secret = 'mrmPWhiK1WCg38bAaTFHUKbObjU'
    # token = '_C6ontQXlmTwpclGbyBvjSspIv7kQc3J'
    # token_secret = 'PdL3RC0CmFNUe64ADdm0WR02dko'

    # api_host = 'api.yelp.com'

    # consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    # access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    # path = "/v2/search?term=restaurants=#{restaurant}&location=#{city}&limit=20"

    # response = access_token.get(path).body

    # @parsed = JSON.load(response)

  end
end
