class CatsController < ApplicationController
  before_action :require_logged_in, except: [:index, :show]

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.owner = current_user
    if @cat.save
      redirect_to cat_url(@cat)
    else
      flash.now[:errors] = @cat.errors.full_messages
      render :new
    end
  end

  def edit
    @cat = current_user.cats.where('cats.id = ?', params[:id]).first
    # fail
    if @cat
      render :edit
    else
      @cat = Cat.find(params[:id])
      flash[:errors] = ["You're not the owner of #{@cat.name}"]
      redirect_to cat_url(@cat)
    end
  end

  def update
    @cat = current_user.cats.where('cats.id = ?', params[:id]).first
    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      @cat = Cat.find(params[:id])
      flash.now[:errors] = @cat.errors.full_messages
      render :edit
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:age, :birth_date, :color, :description, :name, :sex)
  end
end
