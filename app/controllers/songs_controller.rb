class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
  end

  def new
    @new_song = Song.new
  end

  def create
    @new_song = Song.create(song_params)
    redirect_to song_path(@new_song)
  end

  def edit
  
  end

  private

  def song_params
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end
end
