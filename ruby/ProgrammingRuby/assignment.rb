class Test
  def val=(val)
    @var = val
    return 99
  end
end

v = Test.new
result = (v.val = 2)
puts result

#As of Ruby 1.8, the value of the assignment is always the value of the parameter
