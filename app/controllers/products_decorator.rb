ProductsController.class_eval do
  before_filter :feeds_filter, :only => [:kelkoo, :pipe]
  caches_action :kelkoo, :pipe, :expires_in => 1.hour

  def kelkoo
  end

  def pipe
    render :layout => false
  end

  private

  def feeds_filter
    @products = Product.active.where("UPPER(name) NOT LIKE UPPER(?) AND UPPER(name) NOT LIKE UPPER(?)", "%sigaretta%", "%nicotina%")
  end
end
