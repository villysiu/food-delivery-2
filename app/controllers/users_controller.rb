class UsersController < ApplicationController
  def show
    puts "helleo"
   # if params[:id]
    ##  @user = User.find(params[:id]) 
   # else
  #    @user = current_user
  #  end
      @user = params[:id]? User.find(params[:id]) : current_user
  end

end
