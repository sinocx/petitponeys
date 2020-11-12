class CoursController < ApplicationController

    def index
      @cours = Cour.all
    end

    def show
      @cour = Cour.find(params[:id])
      @reservation = ReservationCheval.find(@cour.id)
      @reservations = ReservationCheval.where(cour_id: @cour.id)
    end

	def new
	  @cour = Cour.new # needed to instantiate the form_for
	end

    def create
	    @cour = Cour.new(cour_params)
	    @cour.user = current_user
	    if @cour.save
	    	params[:place] do |i|
	    		rc = ReservationCheval.create()
	    		rc.save
	    	end
		    redirect_to cours_path
	    else
	      render :new
		end
	end
  
	def update
	@cour = Cour.find(params[:id])

		if @Cour.update(cour_params)
		  redirect_to cour_path(@cour)
		else
		  render :new
		end    # Will raise ActiveModel::ForbiddenAttributesError
	end

	def edit
		@cour = Cour.find(params[:id])
	end

	private

	def cour_params
		params.require(:cour).permit(:user_id, :start_time, :end_time, :title, :description)
	end
end