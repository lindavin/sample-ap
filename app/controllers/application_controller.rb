class ApplicationController < ActionController::Base
  
  def goodnight
    render html: 'Good night world'
  end 
  
end
