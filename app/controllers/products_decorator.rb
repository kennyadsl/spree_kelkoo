ProductsController.class_eval do
  def kelkoo
    @products = Product.active
  end
  
  def pipe
    @products = Product.active
    render :layout => false 
  end
end
