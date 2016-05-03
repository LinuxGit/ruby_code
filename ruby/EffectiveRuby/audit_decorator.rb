require 'logger'

class AuditDecorator
  def initialize (object)
    @object = object
    @logger = Logger.new(STDOUT)

    mod = Module.new do
      object.public_methods.each do |name|
        define_method(name) do |*args, &block|

          @logger.info("calling '#{name}' on #{@object.inspect}")
          @object.send(name, *args, &block)
        end
      end
    end

    extend(mod)
  end
end

s1 = AuditDecorator.new("Ruby!")
puts s1.downcase
p s1.class
