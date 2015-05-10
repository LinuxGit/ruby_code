require 'active_support'

module MyConcern
  extend ActiveSupport::Concern
  #def self.included(base)
  #  base.extend ClassMethods
  #end

  def an_instance_method
    "An instance method"
  end

  module ClassMethods
    def a_class_method
      "A class method"
    end
  end
end

class MyClass
  include MyConcern
end

p MyClass.new.an_instance_method
p MyClass.a_class_method
