# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def tagline
    begin
      t = Tagline.is_active.last
      t.copy
    rescue
      t = ""
    end
  end
  
  def page_title
    @page_title.nil? ? controller.action_name.capitalize : @page_title.titleize
  end
  
  # comment crazy
  # in view
  # <% comment do %>
  # stuff to comment
  # <% end %>
  def comment(&block)
    #SWALLOW THE BLOCK
  end
end
