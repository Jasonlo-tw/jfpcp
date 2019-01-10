module OrdersHelper
    def cancel_or_return(id)
        # TODO: correct the logic later. Using "Payment pending" or not as condition for now.
        

        if !@orders.empty? && @orders.find(id).process == "Payment pending"
            
            link_to 'Cancel Order', {controller: "orders", action: "update", order_id: id, process: "Order cancelled"}, method: :put, data: { confirm: "Are you sure to cancel?\n The order will still be kept in record." }
        elsif
            link_to 'Return & Refund', '#'
        else
            return
        end
    end
end
