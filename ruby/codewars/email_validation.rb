def validate(email)
  /[\w\-]+@[a-z\d]+[\-]*[a-z\d]+\.[a-z]+/i === email
end

#http://www.rubular.com/
