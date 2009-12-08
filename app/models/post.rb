class Post < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :body, :user_id, :status, :post_type
  
  named_scope :published, :conditions => {:status => "published"}
  
  def self.statuses(options = [])
    options = ['published', 'draft']
  end
  
  def self.types(options = [])
    options = ['post']
  end

end
