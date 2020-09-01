class SignupsController < ApplicationController
  def show
  end

  def new
    @signup = Signup.new
  end

  def create
    signup = Signup.create(params.require(:signup).permit(:activity_id, :camper_id, :time))
    redirect_to camper_path(signup.camper)
  end

  def edit
  end

  def update
  end
end
