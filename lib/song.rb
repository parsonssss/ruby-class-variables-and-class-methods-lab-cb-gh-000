require 'pry'
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}
  def initialize name,artist,genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre if @@genres.none? {|x| x == genre}
    @@artists << artist if @@artists.none? {|x| x == artist}
    if @@genre_count.has_key? genre
      @@genre_count[genre] = 1
    else
      binding.pry
      @@genre_count[genre] += 1
    end

    if @@artist_count.has_key? artist
      @@artist_count[artist] = 1
    else
      @@artist_count[artist] += 1
    end
  end
end
