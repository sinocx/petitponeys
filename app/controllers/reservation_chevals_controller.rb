class ReservationChevalsController < ApplicationController

	def new
	    @reservation_cheval = ReservationCheval.new # needed to instantiate the form_for
	    @cour = Cour.find(params[:cour_id])
	end

  def create
  	@user = current_user

    @cour = Cour.find(params[:cour_id])

    @reservation_cheval = ReservationCheval.new()
    @reservation_cheval.user = @user
    @reservation_cheval.cour = @cour
    @reservation_cheval.cheval_id = 1

    if @reservation_cheval.save
	    redirect_to cour_path(@cour)
    else
      redirect_to cour_path(@cour), notice: "Failed"
	  end

  end

  def reservation_cheval_params
		params.require(:reservation_cheval).permit(:cheval_id, :user_id, :cour_id)
	end
end