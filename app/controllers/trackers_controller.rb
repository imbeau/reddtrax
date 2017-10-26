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
		 @trackers = Tracker.all.paginate(page: params[:page])
	end

	def show
		@tracker = Tracker.find(params[:id])
	end

	def edit
		@tracker = Tracker.find(params[:id])
	end

	def update
		@tracker = Tracker.find(params[:id])
		
		if @tracker.update_attributes(tracker_params)
			# save was successful
			flash[:success] = "Your edits were saved!"
			redirect_to @tracker
		else
			# save failed
			render 'edit'
		end

	end

	private

	def tracker_params
		# all the parameters we allow to be used to create a tracker
		params.require(:tracker).permit(:name, :keywords, :look_in, :enabled)
	end
end
