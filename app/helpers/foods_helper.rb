module FoodsHelper

  # this is optional and modules help you be a little bit more flexible
  # def get_search(city, restaurant)
  #   yelp_api(city, restaurant)
  # end

  def yelp_api
    consumer_key = 'fRaHH5Mu6S5cERbTaBA9mw'
    consumer_secret = 'mrmPWhiK1WCg38bAaTFHUKbObjU'
    token = '_C6ontQXlmTwpclGbyBvjSspIv7kQc3J'
    token_secret = 'PdL3RC0CmFNUe64ADdm0WR02dko'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search?term=restaurants=#{restaurant}&location=#{city}&limit=20"

    response = access_token.get(path).body

    return parsed = JSON.load(response)
  end

end
