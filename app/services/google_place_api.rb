class GooglePlaceApi < ApplicationService
  attr_reader :keyword, :latitude, :longitude

  def initialize(keyword, latitude, longitude)
    @keyword = keyword
    @latitude = latitude
    @longitude = longitude
  end

  def call
    require "uri"
    require "net/http"
    url = URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@latitude}%2C#{@longitude}&radius=1500&type=restaurant&keyword=#{@keyword}&key=#{Rails.application.credentials.api_google_key}")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)
    response.read_body
  end
end