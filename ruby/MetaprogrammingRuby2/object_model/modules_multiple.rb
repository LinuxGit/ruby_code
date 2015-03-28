module M1; end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

p M3.ancestors

# This is true every time you include or prepend a module: if that module
# is already in the chain, Ruby silently ignores the second inclusion
