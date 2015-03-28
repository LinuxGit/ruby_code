module StringExtension
  refine String do
    def to_alphanumeric
      gsub /[^\w\s]/, ''
    end
  end
end

using StringExtension

p "Hello *Ruby!".to_alphanumeric
