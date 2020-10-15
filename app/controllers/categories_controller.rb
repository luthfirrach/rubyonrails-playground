class CategoriesController < ApplicationController
  def index
  end
  def show
    # render plain: params[:id].inspect
    @ads = Ad.where(m_category_id: params[:id])
  end
end
