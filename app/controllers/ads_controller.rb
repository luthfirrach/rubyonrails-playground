class AdsController < ApplicationController
  def index
  end
  def show
    @ads = Ad.find(params[:id])
  end
  def new
  end
  def create
    # render plain: params[:post].inspect
    @ads = Ad.new(post_params)

    @ads.save
    redirect_to @ads
  end
  private def post_params
    params.require(:post).permit(:title, :description, :m_category_id, :d_category_id, :condition, :price)
  end
end
