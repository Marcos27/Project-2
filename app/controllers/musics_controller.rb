class MusicsController < ApplicationController

  def index
  @musics = Music.all
  end


  def show
  @music = Music.find(params[:id])
  end


  def new
  @musics = Music.new
  end

  def create
  @music = Music.new(params.require(:music).permit(:artist, :song, :genre))

  if @music.save
    redirect_to musics_path
  else
    render :new
  end
end
def edit
  @music = Music.find(params[:id])
end

def update
  @music = Music.find(params[:id])

  if @music.update_attributes(params.require(:music).permit(:artist, :song, :genre))
    redirect_to musics_path
  else
    render :edit
  end
end


def destroy
  @music = Music.find(params[:id])
  @music.destroy
  redirect_to musics_path
end

end
