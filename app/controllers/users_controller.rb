class UsersController < ApplicationController
  def show
    puts "helleo"
   
      @user = params[:id]? User.find(params[:id]) : current_user
  end

end
