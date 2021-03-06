class AdsController < ApplicationController
  def index
    @ads = Ad.all
    @cats = MCategory.all
  end
  def show
    @ad = Ad.find(params[:id])
  end
  def new
    @ad = Ad.new
  end
  def create
    # render plain: params[:post].inspect
    @ad = Ad.new(post_params)

    if(@ad.save)
      redirect_to @ad
    else
      render 'new'
    end
  end
  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy

    redirect_to ads_path
  end

  private def post_params
    params.require(:post).permit(:title, :description, :image, :m_category_id, :d_category_id, :condition, :price)
  end
end
