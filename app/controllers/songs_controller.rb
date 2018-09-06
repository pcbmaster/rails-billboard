class SongsController < ApplicationController
#  before_action :set_song, only: [:show, :edit, :update, :destroy] this breaks everything?

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

end
