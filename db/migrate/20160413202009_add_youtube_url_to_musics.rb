class AddYoutubeUrlToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :youtube_url, :text
  end
end
