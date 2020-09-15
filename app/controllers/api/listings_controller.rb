class Api::ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render "index.json.jb"
  end
  def show
    @listing = Listing.find(params[:id])
    render "show.json.jb"
  end
  def create
    @listing = Listing.create({
      description: params[:description] || @listing.description
      year_built: params[:year_built] || @listing.year_built
      square_feet: params[:square_feet] || @listing.square_feet
      bedrooms: params[:bedrooms] || @listing.bedrooms
      availability: params[:availability] || @listing.availability
      price: params[:price] || @listing.price
      latitude: params[:latitude] || @listing.latitude
      longitude: params[:longitude] || @listing.longitude
    })
    render "show.json.jb"
  end
end
