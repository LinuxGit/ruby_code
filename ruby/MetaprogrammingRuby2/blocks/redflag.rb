lambda {
  setups = []
  events = []

  Kernel.send :define_method, :setup do |&block|
    setups << block
  end

  Kernel.send :define_method, :event do |description, &block|
    events << {:description => description, :condition => block}
  end


}.call
