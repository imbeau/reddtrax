class TrackersController < ApplicationController


	def new
		@tracker = Tracker.new
	end

	def create
		@tracker = Tracker.new(tracker_params)

		if @tracker.save
			# handle a successful save
			flash[:success] = "Campaign created!"
			redirect_to @tracker
		else
			render 'new'
		end
	end

	def index
	end

	def show
		@tracker = Tracker.find(params[:id])
	end

	private

	def tracker_params
		# all the parameters we allow to be used to create a tracker
		params.require(:tracker).permit(:name, :keywords, :look_in, :enabled)
	end
end
