module ApplicationHelper
    def items_in_cart(count, path)
        "<a href='#{path}'>#{count} items in cart ❤</a>".html_safe
    end

end
