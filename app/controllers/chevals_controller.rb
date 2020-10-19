class ChevalsController < ApplicationController

  def show
    @cheval = Cheval.find(params[:id])
  end

	def new
	    @chevals = Cheval.new # needed to instantiate the form_for
	end

  def create
    @cheval = Cheval.new(cheval_params)
    @cheval.save

    # no need for app/views/restaurants/create.html.erb
    if @cheval.save
	    	redirect_to cheval_path(@cheval)
	  end
  end
  
  def update
    @cheval = Cheval.find(params[:id])

    if @cheval.update(cheval_params)
        redirect_to cheval_path(@cheval)
    end    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @cheval = Cheval.find(params[:id])
  end

  private

  def cheval_params
    params.require(:cheval).permit(:nom, :description, :naissance, :id)
  end
end
