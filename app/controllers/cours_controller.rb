class CoursController < ApplicationController

    def show
      @cour = Cour.find(params[:id])
    end

	def new
	  @cour = Cour.new # needed to instantiate the form_for
	  @moniteurs = Moniteur.all
	end

    def create
	    @cour = Cour.new(cour_params)

	    
	    if @cour.save
		    redirect_to cour_path(@cour)
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
		params.require(:cour).permit(:moniteur_id, :heure_date)
	end
end