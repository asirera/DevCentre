class HomeController < ApplicationController
  def index
  @users = User.all
#  @links=Links.all
end

  def welcome
     @users = User.all
     #@links=Links.all

   @user= User.find_by_id(params[:id])
#   @test=user.links
@test="sssss"+current_user.email
  # render :jason=>@test
#render :jason=>@user
  end
  
end
