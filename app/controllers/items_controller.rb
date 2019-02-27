class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :corporativo, :homeaudio, :proaudio]
  add_breadcrumb "Inicio", :items_path

  def index
    @items = Item.search(params[:search])
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.search(params[:categoria])
  end

  def corporativo
    @items = Item.search(params[:search])
  end

  def homeaudio
    @items = Item.search(params[:search])
  end

  def proaudio
    @items = Item.search(params[:search])
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to items_path
  end

  def destroy
    @item.destroy(item_params)
    redirect_to items_path
  end

  private

  def item_params
    params.require(:items).permit(:nombre, :descripcion, :precio, :category, :marca, :color, :photo)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
