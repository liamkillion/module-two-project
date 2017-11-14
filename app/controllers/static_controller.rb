class StaticController < ApplicationController

  def home
<<<<<<< HEAD

=======
>>>>>>> 5735705e55a0e69cd1dc59bbbdf899351762fdd3
    @articles = Article.all
    @outfits = Outfit.all
    @user = User.new
  end

  def dashboard
    render :dashboard
  end

end
