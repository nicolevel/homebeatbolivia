class SearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]
  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit( :categoria, :min_price, :max_price, :marca, :color)
  end
end
