def search(field, genre: nil, duration: 120, **rest )
  p [field, genre, duration, rest] 
end

search(:title, duration: 240, stars: 3, genre: "popular", tempo: "slow")
