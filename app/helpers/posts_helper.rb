module PostsHelper
    def no_posts_tag
       if @posts.count == 0 && !user_signed_in? 
        "<h3 class='mt-5 text-center'> There are no posts right now!!</h3>".html_safe
       end
    end
    def profile_image_tag(post)
        if user_signed_in?
            "<div class='profile-image'>
                 #{gravatar_image_tag(post.user.email , alt: post.user.name)}
            </div>".html_safe
        end
    end
    def username_tag(post)
        if user_signed_in? 
            "<strong>
                #{post.user.name.capitalize!}
            </strong><br>".html_safe
        end 
    end
end
