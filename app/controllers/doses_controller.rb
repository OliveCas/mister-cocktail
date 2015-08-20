class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :create, :destroy]
  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    flash[:notice] = "Dose #{@dose.name} has been created"
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.restaurant = @cocktail
    authorize @dose
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render 'cocktails/show'
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def find_
    @dose = Dose.find(params[:id])
  end
end

