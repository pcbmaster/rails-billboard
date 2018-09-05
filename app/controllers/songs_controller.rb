class SongsController < ApplicationController
#  def index
#    
#  end

  def show
    @song = Song.find([:id])
  end

  def new
    @song = Song.new
  end

  def edit
    
  end
end
