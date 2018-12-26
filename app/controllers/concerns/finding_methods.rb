module FindingMethods
    extend ActiveSupport::Concern


    private
    
    # titleize params[:product_name] before defining @product to get eg.
    # Brown Rice Spaceman Backpack
    # instead of 
    # brown-rice-spaceman-backpack
    # as originally in params[:product_name]
    def titleized_param_product
        
        params[:product_name].titleize
    end

end