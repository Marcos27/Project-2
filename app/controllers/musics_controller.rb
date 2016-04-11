class MusicsController < ApplicationController
  def index
  @musics = Music.all
  end

  def show
  @music = Music.find(params[:id])
  end

  def new
  @music = Music.new
  end


  def create
  @music = Music.new(music_params) # here we use our music_params method

  if @music.save
    redirect to :musics
  else
    render :new
  end
end




  def edit
   @music = Music.find(params[:id])
  end


  def update
    @music = Music.find(params[:id])

    if @music.update_attributes(music_params) #here we use our music_params method
     redirect_to :musics
    else
     render :edit
    end
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
    redirect_to musics_path
  end


  # app/controllers/musics_controller.rb

  # this gets added to the bottom of our controller
  private
  def music_params
    params.require(:music).permit(:artist, :song, :genre)
  end





end









