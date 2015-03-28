module StringExtension
  refine String do
    def reverse
      'serever'
    end
  end
end

module StringStuff
  using StringExtension
  p "hello ruby".reverse
end

p "hello ruby".reverse

