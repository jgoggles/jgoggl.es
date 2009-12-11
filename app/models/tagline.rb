class Tagline < ActiveRecord::Base
  validates_presence_of :copy
  
  named_scope :is_active, :conditions => {:active => true}
end
