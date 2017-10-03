class TrackersController < ApplicationController


	def new
		@tracker = Tracker.new
	end

	def index
	end

	def show
		@tracker = Tracker.find(params[:id])
	end
end
