class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    number = 0
    super unless %w[Daniel Bob Bill].include? person
    3.times do
      number = rand(10) + 1
      puts "#{number}"
    end
    "#{person} got #{number}."
  end
end

obj = Roulette.new
p obj.daniel
p obj.jack
