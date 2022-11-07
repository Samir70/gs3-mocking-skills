class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
    return true if keyword == ""
    return @title.downcase.include?(keyword.downcase) || @artist.downcase.include?(keyword.downcase)
  end

  attr_reader :title, :artist
end
