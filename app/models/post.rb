class Post < ActiveRecord::Base
  belongs_to :user
  
  has_friendly_id :title, :use_slug => true
  
  validates_presence_of :body, :user_id, :status, :post_type, :title
  
  has_attached_file :title_image
  
  named_scope :published, :conditions => {:status => "published"}, :order => 'updated_at DESC'
  
  def self.statuses(options = [])
    options = %w[published draft]
  end
  
  def self.types(options = [])
    options = %w[post music link]
  end

end
