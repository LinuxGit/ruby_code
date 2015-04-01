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

my_object = Greeting.new("openstack")
p my_object.class
p my_object.class.instance_methods(false)
p my_object.instance_variables

m_object = Movie.new("Ruby Tuesday")
p m_object.welcome
p m_object.public_method(:welcome).super_method.call
