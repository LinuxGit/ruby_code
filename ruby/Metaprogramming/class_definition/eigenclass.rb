obj = Object.new
eigenclass = class << obj
               self
             end

p eigenclass.class

def obj.my_singleton_method; end

p eigenclass.instance_methods.grep(/my_/)
