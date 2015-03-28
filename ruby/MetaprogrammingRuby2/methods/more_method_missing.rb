class Lawyer
  def method_missing(method, *args)
    puts "You called #{method} (#{args.join(', ')})."
    puts "You also passed it a block."
  end
end

nick = Lawyer.new
nick.talk_simple('a', 'b') do
  #block
end
