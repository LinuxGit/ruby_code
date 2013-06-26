def are_you_sure?
  while true
    print "Are you sure? [y/n]"
    response = gets
    case response
    when /^[yY]/
      return true
    when /^[nN]/, /^$/
      return false
    end
  end
end

if are_you_sure?
  puts "I love ruby."
end
