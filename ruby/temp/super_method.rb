class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

class Movie < Greeting
  def initialize(text)
    super text
  end

  def welcome
    "Fantastic."
  end
end

m_object = Movie.new("Ruby Tuesday")
p m_object.welcome
p m_object.public_method(:welcome).super_method.call
