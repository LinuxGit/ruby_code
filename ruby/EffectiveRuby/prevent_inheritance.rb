module PreventInheritance
  class InheritanceError < StandardError; end

  def inherited(child)
    raise(InheritanceError, "#{child} cannot inherit from #{self}")
  end
end

Array.extend(PreventInheritance)

class BetterArray < Array; end
