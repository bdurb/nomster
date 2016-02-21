class PlacesController < ApplicationController
	def index
		@places = Place.all.page(params[:page]).per(3)
	end
end
