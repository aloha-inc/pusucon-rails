class SearchesController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  	@schools = School.order(:name)
  end
end
