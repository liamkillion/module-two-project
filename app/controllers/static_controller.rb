class StaticController < ApplicationController

  def home

    @articles = Article.all
    @outfits = Outfit.all
    @user = User.new
  end

  def dashboard
    render :dashboard
  end

  def about
    
  end
end
