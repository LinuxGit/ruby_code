def add_method_to(a_class)
  a_class.class_eval do
    def m
      "Hello World."
    end
  end
end

add_method_to String
p "openstack".m

add_method_to Numeric
p 8.m
