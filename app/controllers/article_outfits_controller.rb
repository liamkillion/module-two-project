class ArticleOutfitsController < ApplicationController
  before_action :set_article_outfit, only: [:show, :edit, :update, :destroy]

  # GET /article_outfits
  # GET /article_outfits.json
  def index
    @article_outfits = ArticleOutfit.all
  end

  # GET /article_outfits/1
  # GET /article_outfits/1.json
  def show
  end

  # GET /article_outfits/new
  def new
    @article_outfit = ArticleOutfit.new
  end

  # GET /article_outfits/1/edit
  def edit
  end

  # POST /article_outfits
  # POST /article_outfits.json
  def create

  end

  # PATCH/PUT /article_outfits/1
  # PATCH/PUT /article_outfits/1.json
  def update

  end

  # DELETE /article_outfits/1
  # DELETE /article_outfits/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_outfit
      @article_outfit = ArticleOutfit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_outfit_params
      params.require(:article_outfit).permit(:outfit_id, :article_id)
    end
end
