class TopboardsController < ApplicationController
  before_action: set_topboard, only [:show, :edit, :new, :destroy ]
  
  def index
    @Topboards = Topboard.all
  end

  def show
  end

  def new
    @topboard = Topboard.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @topboard = Topboard.new(topboard_params)
    if @topboard.save
      redirect_to topboards_path
    else
      render :new
    end
  end

  def update
    if @topboard.update(topboard_params)
      redirect_to topboard_path(@topboard)
    else
      render :edit
    end
  end

  def destroy
    @topboard.destroy
    redirect_to topboards_path
  end

  private
    def set_topboard
      @topboard = Topboard.find(params[:id])
    end

    def topboard_params
      params.require(:sub).permit(:name)
    end
end
