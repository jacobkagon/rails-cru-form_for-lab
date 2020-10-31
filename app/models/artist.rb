class Artist < ApplicationRecord
    has_many :songs

  def add_songs(name)
    Song.create(name:name, artist_id: self.id, genre_id: nil)
  end
end
