ary = %w[Ruby PHP Perl Python Java]
p ary.sort

sorted = ary.sort { |a, b| a.length <=> b.length }
p sorted
