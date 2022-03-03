class ChoicesController < ApplicationController

  def get_random_choices
    random_choice = Choice.all.sample
    render :json => random_choice, only: [:id, :name]
  end

end