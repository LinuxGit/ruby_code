#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
require 'active_support/core_ext/integer/even_odd'
require 'active_support/core_ext/integer/inflections'
require 'active_support/core_ext/integer/time'

class Integer #:nodoc:
  include ActiveSupport::CoreExtensions::Integer::EvenOdd
  include ActiveSupport::CoreExtensions::Integer::Inflections
  include ActiveSupport::CoreExtensions::Integer::Time
end
