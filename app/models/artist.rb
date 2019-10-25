class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
     genres.first
  end

  def song_count
     songs.all.count
  end

  def genre_count
    genres.all.count
  end
end
