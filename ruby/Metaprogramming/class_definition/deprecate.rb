class Book
  def GetTitle
    puts "== book title"
  end

  def title2
    puts "== book subtitle"
  end

  def title
    puts ":-) book title"
  end

  def subtitle
    puts ":-) book subtitle"
  end

  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      warn "Warning: #{old_method}() is deprecated. Use #{new_method}()."
      send(new_method, *args, &block)
    end
  end

  deprecate :GetTitle, :title
  deprecate :title2, :subtitle
end


a = Book.new
a.GetTitle
a.title2
