class BillboardsController < ApplicationController
	before_action :set_billboard, only: [:show, :update, :edit, :destroy]

  def index
  	@billboards = Billboard.all
  end

  def show
  	# before_action set_billboard to get the ID
  end

  def new
    @billboard = Billboard.new
    render :new
  end

  def create
    @billboard = current_user.billboards.new(billboard_params)
    if @billboard.save
      redirect_to billboard_path(@billboard.id)
    else 
      render :new
    end
  end

  def update
    if @billboard.update(billboard_params)
      redirect_to billboards_path
    else 
      render :edit
    end
  end

  def edit
  	render :edit
  end

  def destroy
    @billboard.destroy 
    redirect_to billboards_path
  end


  private
  def set_billboard
  	@billboard = Billboard.find(params[:id])
  end

  def billboard_params
    params.require(:billboard).permit(:name)
  end

end
