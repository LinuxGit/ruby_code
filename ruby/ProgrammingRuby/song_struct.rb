Song = Struct.new(:file, :duration, :artist, :title)

File.open("song.txt") do |f|
  song = []
  f.each do |l|
    file, duration, artist, title = l.chomp.split(/\s*\|\s*/)
    artist.squeese
  end
end
