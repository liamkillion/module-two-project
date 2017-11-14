class StaticController < ApplicationController

  def home
    @user = User.new
  end

  def dashboard
    render :dashboard
  end


end
