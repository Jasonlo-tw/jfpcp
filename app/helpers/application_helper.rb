module ApplicationHelper
    def items_in_cart(count, path)
        if count == 1
            "<a href='#{path}'>#{count} item in cart ❤</a>".html_safe
        else
            "<a href='#{path}'>#{count} items in cart ❤</a>".html_safe
        end
    end

end
