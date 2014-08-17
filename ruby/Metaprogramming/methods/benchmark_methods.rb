class String
  def method_missing(method, *args)
    method == :ghost_reverse ? reverse : super
  end
end

require 'benchmark'

Benchmark.bm(15) do |b|
  b.report 'Normal method:' do
    1000000.times { "ruby".reverse }
  end

  b.report 'Ghost method:' do
    1000000.times { "ruby".ghost_reverse }
  end
end
