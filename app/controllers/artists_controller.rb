class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    
  end

  def new
    @new_artist = Artist.new
  end

  def create
    @new_artist = Artist.create(artist_params)
    redirect_to artist_path(@new_artist)
  end

  def edit
    @update_artist  = Artist.find(params[:id])
  end

  def update
  @update_artist  = Artist.find(params[:id])
  @update_artist.update(artist_params)
  redirect_to artist_path(@update_artist)
  end

  def destroy
    @destroy_artist = Artist.find(params[:id])
    @destroy_artist.delete
    redirect_to artists_path
  end
private

def artist_params
  params.require(:artist).permit(:name, :bio)
end




end

