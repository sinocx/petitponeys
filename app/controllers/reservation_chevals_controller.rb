class ReservationChevalsController < ApplicationController

	def new
	    @reservation_cheval = ReservationCheval.new # needed to instantiate the form_for
	    @cour = Cour.find(params[:cour_id])
      @chevals = Cheval.available_now
      @user = current_user
	end

  def create
    @user = current_user
    params[:user_id] = current_user
    @reservation_cheval = ReservationCheval.new(reservation_cheval_params)


    if @reservation_cheval.save
	    redirect_to cour_path(@cour)
    else
      redirect_to cour_path(@cour), notice: "Failed"
	  end

  end

  private

  def reservation_cheval_params
		params.require(:reservation_cheval).permit(:cheval_id, :user_id, :cour_id)
	end
end