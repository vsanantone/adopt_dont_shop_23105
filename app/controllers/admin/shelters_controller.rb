class Admin::SheltersController < ApplicationController
  def index
    @shelters = Shelter.reverse_alpha_order
  end
end