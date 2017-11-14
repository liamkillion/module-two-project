class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :update, :destroy]

  # GET /outfits
  # GET /outfits.json
  def index
    @outfits = Outfit.all
  end

  # GET /outfits/1
  # GET /outfits/1.json
  def show
    @outfit = Outfit.find(params[:id])
  end

  # GET /outfits/new
  def new
    @outfit = Outfit.new
  end

  # GET /outfits/1/edit
  def edit
    @outfit = Outfit.find(params[:id])
  end

  # POST /outfits
  # POST /outfits.json
  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.save
    redirect_to outfit_path(@outfit)

  end

  # PATCH/PUT /outfits/1
  # PATCH/PUT /outfits/1.json
  def update

  end

  # DELETE /outfits/1
  # DELETE /outfits/1.json
  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destory
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outfit
      @outfit = Outfit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outfit_params
      params.require(:outfit).permit(:user_id)
    end
end
