class AddBoardToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :topboard, foreign_key: true
  end
end
