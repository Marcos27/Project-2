class MusicsController < ApplicationController
 before_action :set_music, only: [:show, :edit, :update, :destroy]
 before_action :authorize, except: [:index, :show]
 before_action :only_my_musics, only: [:edit, :update, :destroy]




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
  @music.user = current_user
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

  def set_music
      @music = Music.find(params[:id])
  end

  def only_my_musics
    redirect_to root_path, notice: "you can't edit someone elses Song" if (current_user != @music.user)
  end


end









