def get_all_with_counts(arr)
	arr.each_with_object({}) {|item, acc| acc[item] = arr.count(item) unless acc.has_key?(item)}
end

class Song

	attr_accessor(:name, :artist, :genre)
	@@artists = []
	@@genres = []
	@@count = 0

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@artists << artist
		@@genres << genre
		@@count += 1
	end 

	def self.count
		@@count
	end 

	def self.artists
		@@artists.uniq
	end 

	def self.genres
		@@genres.uniq
	end 

	def self.genre_count
		get_all_with_counts(@@genres)
	end 

	def self.artist_count
		get_all_with_counts(@@artists)
	end 

end