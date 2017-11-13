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
    @article_outfit = ArticleOutfit.new(article_outfit_params)

    respond_to do |format|
      if @article_outfit.save
        format.html { redirect_to @article_outfit, notice: 'Article outfit was successfully created.' }
        format.json { render :show, status: :created, location: @article_outfit }
      else
        format.html { render :new }
        format.json { render json: @article_outfit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_outfits/1
  # PATCH/PUT /article_outfits/1.json
  def update
    respond_to do |format|
      if @article_outfit.update(article_outfit_params)
        format.html { redirect_to @article_outfit, notice: 'Article outfit was successfully updated.' }
        format.json { render :show, status: :ok, location: @article_outfit }
      else
        format.html { render :edit }
        format.json { render json: @article_outfit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_outfits/1
  # DELETE /article_outfits/1.json
  def destroy
    @article_outfit.destroy
    respond_to do |format|
      format.html { redirect_to article_outfits_url, notice: 'Article outfit was successfully destroyed.' }
      format.json { head :no_content }
    end
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
