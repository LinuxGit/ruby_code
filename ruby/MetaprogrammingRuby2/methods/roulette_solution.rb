class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    super unless %w[Ruby Daniel Emrys].include? person
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}"
    end

    "#{person} got #{number}."
  end
end

number_of = Roulette.new
puts number_of.ruby
puts number_of.daniel
