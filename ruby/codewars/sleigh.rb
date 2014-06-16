class Sleigh
  def authenticate(name, password)
    if name == "Santa Claus" && password == "Ho Ho Ho!"
      true
    else
      false
    end
  end
end


#Best Practices
class Sleigh
  def authenticate(name, password)
    name == "Santa Claus" && password == "Ho Ho Ho!"
  end
end
