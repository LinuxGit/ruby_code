#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
class Sponsor < ActiveRecord::Base
  belongs_to :sponsor_club, :class_name => "Club", :foreign_key => "club_id"
  belongs_to :sponsorable, :polymorphic => true
end