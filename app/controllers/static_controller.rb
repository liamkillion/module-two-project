class StaticController < ApplicationController

  def home
    @articles = Article.all
    @outfits = Outfit.all
  end

end
