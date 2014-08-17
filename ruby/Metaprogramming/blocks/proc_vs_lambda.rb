def double(callable_object)
  callable_object.call * 2
end

#l = lambda { return 10 }
l = Proc.new { 10 }

p double(l)
