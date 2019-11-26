class CandiesController < ApplicationController
  before_action :find_candy_by_id, only: [:show, :edit, :update, :destroy]


  def index
    @candies = Candy.all
  end

  def show
    # @candy = Candy.find(params[:id])
  end

  def new
    @candy = Candy.new
    @users = User.all
  end

  def create
    @candy = Candy.create(candies_params)

    redirect_to @candy
  end

  def edit
    # @candy = Candy.find(params[:id])
  end

  def update
    # @candy = Candy.find(params[:id])
    @candy.update(candies_params)

    redirect_to @candy
  end

  def destroy
    # @candy = Candy.find(params[:id])
    @candy.destroy

    redirect_to candies_path
  end

  private

  def candies_params
    params.require(:candy).permit(:name, :candy_type, :user_id)
  end

  def find_candy_by_id
    @candy = Candy.find(params[:id])
  end

end
