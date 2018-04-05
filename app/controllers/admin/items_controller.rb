class Admin::ItemsController < Admin::BaseController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path
    else
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy

    redirect_to admin_items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :item_type, :offense, :defense)
  end
end
