class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @users = []
    Article.all.each do |article|
      @users << article.user_id
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.user_id=params[:user_id]

      if @article.save
        redirect_to user_article_path(@article.user.id, @article.id)

      else
        render :new

      end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
  @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to user_article_path(@article.user, @article)
    else
      render :edit
    end
  end


  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:description, :category, :color, :summer, :winter, :image)
    end
end
