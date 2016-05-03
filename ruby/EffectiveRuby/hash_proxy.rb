class HashProxy
  def initialize
    @hash = {}
  end

  Hash.public_instance_methods(false).each do |name|
    define_method(name) do |*args, &block|
      @hash.send(name, *args, &block)
    end
  end
end

h = HashProxy.new
p h.respond_to?(:size)
p h.public_methods(false).take(5)
