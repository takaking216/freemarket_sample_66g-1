class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @user = User.find(@item.user_id)
    @image = @item.images[0].image
    @category = Category.find(@item.category)
    @delivery_chage = Delivery_chage.find(@item.delivery_chage)
    @status = Status.find(@item.status)
    @prefecture = Prefecture.find(@item.delivery_area)
    @delivery_date = Delivery_date.find(@item.delivery_date)
    @user_items = Item.where(saler: @user).includes(:images).order("created_at DESC")
    if user_signed_in? && current_user.id == @item.saler
      redirect_to item_detail_mypage_path(@item)
    end
  end


  def new
    @item = Item.new
    @item.images.new
  end

  def edit
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to item_detail_mypage_path(item)
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to mypage(current_user.id)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(
      :name,
      :info,
      :category,
      :status, 
      :delivery_chage, 
      :delivery_area, 
      :delivery_date, 
      :delivery_method, 
      :brand,
      :price, 
      images_attributes: [:image, :_destroy, :id]
      ).merge(user_id: current_user.id,saler: current_user.id)
  end
end
