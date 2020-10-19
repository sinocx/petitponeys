class ChevalsController < ApplicationController

	def new
	    @chevals = Cheval.new # needed to instantiate the form_for
	end

  def create
    @cheval = Cheval.new(cheval_params)
    @cheval.save

    # no need for app/views/restaurants/create.html.erb
    if @cheval.save
	    	redirect_to root
	end
  end


  private

  def cheval_params
    params.require(:cheval).permit(:nom, :description, :naissance)
  end
end
