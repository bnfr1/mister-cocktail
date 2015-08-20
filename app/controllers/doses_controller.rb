class DosesController < ApplicationController

  before_action :find_dose, :only [:destroy]
  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def find_dose
     @dose = Dose.find(params[:id])
  end
end
