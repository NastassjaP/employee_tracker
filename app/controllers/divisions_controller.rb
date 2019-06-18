class DivisionsController < ApplicationController
  def index
    @divisions=Division.all
  end

  def update
  end

  def new
    @division=Division.new
  end

  def create
    @division = Division.new(division_params)
    @division.save
    redirect_to @division
  end

  def edit
  end

  def show
    @division=Division.find(params[:id])
  end

  def destroy
  end

  private
  def division_params
    params.require(:division).permit(:division_name)
  end
end
