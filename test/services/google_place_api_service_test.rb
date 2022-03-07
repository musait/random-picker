class GooglePlaceApiServiceTest < ActiveSupport::TestCase

  test 'should return a status 200' do
    type_of_restaurant = "Mexicain"
    latitude = 50.63556797687332
    longitude = 3.0465559101984496
    google_place_api_service = GooglePlaceApi.call(type_of_restaurant, latitude, longitude)
    assert_equal(true, google_place_api_service.present?)
    assert_equal(String, google_place_api_service.class)
  end
end