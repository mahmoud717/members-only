module ApplicationHelper
    def alert_tag(flash)
       if flash[:notice]  
           " <p class='notice alert alert-primary mb-0 text-center'> #{notice} </p>".html_safe 
       elsif flash[:alert]  
            "<p class='alert'><%= #{alert} </p>".html_safe 
       end  
    end
end
