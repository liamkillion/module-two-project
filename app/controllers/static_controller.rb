class StaticController < ApplicationController

  def home
<<<<<<< HEAD
    @articles = Article.all
    @outfits = Outfit.all
  end

=======
    @user = User.new
  end

  def dashboard
    render :dashboard
  end


>>>>>>> 9c954a600c5ee530c0c2e554fca826d8dcddcecb
end
