module ApplicationHelper
  
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    "#{(page_title + ' | ') unless  page_title.empty?}Ruby on Rails Tutorial Sample App"
  end
end
