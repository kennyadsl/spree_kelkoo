ProductsHelper.module_eval do
  def shipping_costs(product)
    product.price < 50 ? "6.00" : "0.00"
  end
end