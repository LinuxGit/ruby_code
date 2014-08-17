def add_method_to(a_class)
  a_class.class_eval do
    def m; "Hello Ruby."; end
  end
end

add_method_to String
p "ruby".m
