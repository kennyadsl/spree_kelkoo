class Admin::KelkoosController < Admin::BaseController

  def update
    Spree::Kelkoo::Config.set(params[:preferences])

    respond_to do |format|
      format.html {
        redirect_to admin_kelkoo_path
      }
    end
  end

end
