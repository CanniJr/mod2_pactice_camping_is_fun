class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id])
  end

  def new
    @camper = Camper.new
  end

  def create
    new_camper = Camper.create(params.require(:camper).permit(:name, :age))
    redirect_to camper_path(new_camper)
  end
end
