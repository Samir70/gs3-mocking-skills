class MusicLibrary
  def initialize
    @track_list = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @track_list << track
  end

  def all
    # Returns a list of track objects
    return @track_list
  end

  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    return keyword == "" ? @track_list : @track_list.filter(&:matches?)
  end
end
