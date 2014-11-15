def word_capitalize(word)
  word.split(/\-/).map(&:capitalize).join("-")
end
