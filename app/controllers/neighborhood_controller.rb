class NeighborhoodController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = get_neighborhood
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new(neighborhood_params)
    if @neighborhood.save
      redirect_to neighborhoods_path
    else
      render "new"
    end
  end

  def edit
    @neighborhood = get_neighborhood
  end

  def update
    @neighborhood = get_neighborhood
    if @neighborhood.update(neighborhood_params)
      redirect_to artist_path(@neighborhood), notice: "Neighborhood successfully updated"
    else
      render "edit"
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
