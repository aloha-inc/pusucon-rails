class SearchesController < ApplicationController
  def index
  	@schools = School.order(:name)
  end
end
