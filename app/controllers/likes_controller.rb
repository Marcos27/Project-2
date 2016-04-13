class LikesController < ApplicationController


  def post
    response = {
      success: true
    }
  user_id = params[:user_id]
  music_id = params[:music_id]

  music = Music.find(music_id)

  all_likes = music.likes

  already_liked = all_likes.any? do |like|
    like.user_id.to_s == user_id
  end

  if already_liked
    response[:already_liked] = true
    response[:success] = false
  else
    music.likes.create(:user_id => user_id)
  end

    render json: response
  end



  private
    def likes_params
     params.require(:like).permit(:user_id, :music_id)
    end
#     def create
#     end

 end
