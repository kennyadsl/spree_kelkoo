ProductsController.class_eval do
  def kelkoo
    @products = Product.active
  end
end
