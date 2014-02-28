def search(field, genre: nil, duration: 120 )
 p [field, genre, duration]
end

search(:title, duration: 240, genre: "blues")
search(:title)
#search(:title, style: "jazz")
