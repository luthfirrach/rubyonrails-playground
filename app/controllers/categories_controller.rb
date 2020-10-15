class CategoriesController < ApplicationController
  def index
    render plain: params[:id].inspect
  end
  def show
    # render plain: params[:id].inspect
    @cats = MCategory.all
    @ads = Ad.where(m_category_id: params[:id])
  end
end
