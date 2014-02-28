Song = Struct.new(:file, :duration, :artist, :title)

File.open("song.txt") do |f|
  songs = []
	f.each do |line|
		file, duration, artist, title = line.chomp.strip.split(/\s*\|\s*/)
    min, sec = duration.split(":")
    artist.squeeze!
    title.squeeze!
    songs << Song.new(file, min.to_i * 60 + sec.to_i, artist, title)
  end
  
  p songs[1]
end

