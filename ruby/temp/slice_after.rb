pi = Math::PI.to_s.scan(/\d/).map(&:to_i)
p pi.slice_after(&:even?).to_a
p pi.slice_after { |item| item == 9 }.to_a

