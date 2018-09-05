class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :topboard, optional:true
end
