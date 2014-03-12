class HomeController < ApplicationController
  def index
  @users = User.all
end

  def welcome
     @users = User.all

   @user= User.find_by_id(params[:id])
render :jason=>@user
  end
  
end
