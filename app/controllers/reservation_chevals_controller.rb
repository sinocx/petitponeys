class ReservationChevalsController < ApplicationController

	def new
	    @reservation_cheval = ReservationCheval.new # needed to instantiate the form_for
	    @cour = Cour.find(params[:cour_id])
      @chevals = Cheval.available_now
      @user = current_user
	end

  def create

    @cour = params[:cour_id]
    @reservation_cheval = ReservationCheval.new(reservation_cheval_params)
    @reservation_cheval.user = current_user
    @reservation_cheval.cour = Cour.find(params[:cour_id])
    if params[:cheval_id] == nil 
      @reservation_cheval.cheval_id = 1
    end
    Cheval.find(params[:cheval_id]).book = true
    Cheval.save
    if @reservation_cheval.save
	    redirect_to cour_path(@cour)
    else
      redirect_to cour_path(@cour), notice: "Failed"
	  end

  end

  private

  def reservation_cheval_params
    params.permit(:cheval_id, :user_id, :cour_id)
	end

end