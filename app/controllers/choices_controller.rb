class ChoicesController < ApplicationController
  #require 'google_place_api.rb'
  def get_random_choices
    random_choice = Choice.all.sample
    render :json => random_choice, only: [:id, :name]
  end

  def get_places
    results = GooglePlaceApi.call( params[:keyword], params[:lat], params[:long] )
    render :json => results
  end

end