class SomeClass
  def []=(*params)
    p params
    value = params.pop
    puts "Indexed with #{params.join(', ')}"
    puts "value = #{value.inspect}"
  end
end
s = SomeClass.new
s[1] = 2
s['cat', 'dog'] = 'enemies'
