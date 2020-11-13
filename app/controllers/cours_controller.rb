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
    	n = 0;
	    @cour = Cour.new(cour_params)
	    place = cour_params
	    @user = current_user
	    @cour.user = @user
	    if @cour.save
	    	while n < place[:place].to_i# Tant que n est inférieur ou égal à 10, le code est exécuté.
			  res = ReservationCheval.new(cour_id: @cour.id, cheval_id: 1)
			  res.user_id = @user.id
			  res.save
			  n = n + 1 # On ajoute 1 à n à chaque tour pour que sa valeur atteigne 10.
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
		params.require(:cour).permit(:user_id, :start_time, :end_time, :title, :description, :place, :niveau)
	end
end