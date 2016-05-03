require 'logger'


class AuditDecorator
  def initialize (object)
    @object = object
    @logger = Logger.new(STDOUT)

    meths = @object.public_methods
    meths.delete(:define_singleton_method)
    meths.push(:define_singleton_method)
    meths.each do |name|
      define_singleton_method(name) do |*args, &block|
      @logger.info("calling '#{name} with args(#{args})' on #{@object.inspect}")
      @object.send(name, *args, &block)
      end
    end
  end
end

s1 = AuditDecorator.new("ruby!")
p s1.class
