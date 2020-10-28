class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :chooseUser]

  def home
  end
  def chooseUser
  end

end
