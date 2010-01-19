class Link < ActiveRecord::Base
  named_scope :recent, :limit => 10, :order => 'updated_at DESC'
end
