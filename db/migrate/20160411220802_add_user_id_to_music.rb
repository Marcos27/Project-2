class AddUserIdToMusic < ActiveRecord::Migration
  def change
    add_reference :musics, :user
  end
end
