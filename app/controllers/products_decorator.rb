ProductsController.class_eval do
  caches_action :kelkoo, :pipe, :expires_in => 1.hour

  def kelkoo
    @products ||= Product.active
  end
  
  def pipe
    @products ||= Product.active
    render :layout => false 
  end
end
