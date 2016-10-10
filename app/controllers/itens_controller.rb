class ItensController < ApplicationController
  def create
    #Show on screen
    #render plain: params[:itens].inspect
    
    @item = Item.new(itens_params)
    
    @item.save
    redirect_to @item
  end

  def new
  end
  
  def index
    @itens = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  private   def itens_params
    params.require(:itens).permit(:title, :notes)
  end
end
