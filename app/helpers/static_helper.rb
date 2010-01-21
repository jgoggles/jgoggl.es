module StaticHelper
  
  # Reuseable content archive
  def archive(set, display, url=nil)
    # set is the array of objects
    # display is a string we'll use to identify the object attribute to be used for the link's display text ie "title"
    # url is the same as above but for the href of the link
    
    content = ''
    
    set.each do |s|
      
      # Create an h1 with the object's updated_at year, but only once for each year
      unless s.updated_at.year == set[(set.index(s))-1].updated_at.year && s != set.first 
        content << content_tag(:li) do
          content_tag(:h1, s.updated_at.year, :class => 'goudy')
        end
      end
    
      # Create an h2 with the object's updated_at month, but only once for each month
      unless s.updated_at.month == set[(set.index(s))-1].updated_at.month && s != set.first
        content << content_tag(:li) do
          content_tag(:h2, s.updated_at.strftime("%B"))
        end
      end
      
      # Either use the specified url argument as the object's url attribute or the object path itself
      url.nil? ? @url = s : @url = s.url
    
      # Creat the li and the link
      content << content_tag(:li) do
        link_to(s[display], @url)
      end
    end
    
    # Package it all up
    content_tag(:div, :class => 'archiveContainer') do 
      content_tag(:ul, content)
    end 
  end
  
end
