class NeighborhoodsController < ApplicationController
  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new(neighborhood_params)
    if @neighborhood.save
      redirect_to neighborhoods.path
    else
      render 'new'
    end
  end

  def destroy
    @neighborhood = get_neighborhood
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end

  private

  def get_neighborhood
    Neighborhood.find(params[:id])
  end

  def neighborhood_params
    params.require(:neighborhood).permit(:name, :city)
  end


end
