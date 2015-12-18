#Playlist Challenge
#I worked on this challenge with Lindsey!

# Pseudocode
# create a new CLASS called Song
# Song CLASS initialize method should take 2 arguments:
  # song - as a string
  # artist - as a string
# initizale method should store these arguments as instance variables

# create a new CLASS called Playlist
# Playlist CLASS accesses song objects from Song class with an attr_accessor
# Playlist CLASS initialize method takes any number of arguments (SPLAT)
  # these arguments are song titles, instances of the Song CLASS
# initialize method stores all songs in a new playlist
# all songs passed to new instance are stored in the new playlist

# define method in Playlist CLASS, called add
# add method takes any number of songs as arguments (SPLAT)
# pushes new instances of Song CLASS into the playlist

# define a new method num_of_tracks to count the number of songs in the playlist
# count the number of items in the playlist, return an integer

# define a new method play to play a song in the Song CLASS
# return a string to let the user know their song is playing

# define a new method to remove a song from our playlist
# remove the song title from the playlist

# define a new method includes? for the Playlist CLASS to see if a song is in that playlist
# if the playlist includes the song, return true, else false

# define a new method play_all for the Playlist CLASS
# to iterate through the playlist
# return a string to show that we are playing each song in turn

# define a new method display for the Playlist CLASS to show all songs in the playlist
# simply return the array to the console


# Initial Solution
class Song
  attr_accessor :song_title
  attr_accessor :artist
  
  def initialize(song_title, artist)
    @song_title = song_title
    @artist = artist
  end
  
  def play
    puts "#{@song_title} now playing"
  end

end

class Playlist
  # attr_accessor :new_playlist
  
  def initialize(*songs)
    
    @new_playlist = []
    
    songs.each do |x|
      @new_playlist.push(x.song_title)
    end
    
    # puts @new_playlist
    
  end
  
  def add(*songs)
    songs.each do |x|
      @new_playlist.push(x.song_title)
    end
    # puts @new_playlist
  end
  
  def num_of_tracks
    @new_playlist.length
  end
  
  def remove(song)
    @new_playlist.delete(song.song_title)
    p @new_playlist
  end
  
  def includes?(song)
    if @new_playlist.include?(song.song_title)
      true
    else
      false
    end
  end
  
  def play_all
    @new_playlist.each { |song_title| p "Now playing: #{song_title}" }
  end
  
  def display
    puts @new_playlist
  end
  
end


# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

# What concepts did you review in this challenge?
#We reviewed accessors, iterating over an array, and passing information between methods in a class.

# What is still confusing to you about Ruby?
#Probably accessors, which seem to work like magic to me. I have to get the syntax right. 
# What are you going to study to get more prepared for Phase 1?
#Review accessors and how I can use them to pass informations through a class more easily. 