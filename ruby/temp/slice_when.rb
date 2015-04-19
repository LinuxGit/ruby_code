 pi = Math::PI.to_s.scan(/\d/).map(&:to_i)
 p pi.slice_when { |a, b| a.even? && b.odd? }.to_a
