class ApplicationController < ActionController::Base
  include CurrentCart
  protect_from_forgery with: :exception
  before_action :set_cart

  # rescue_form 拦截了由find方法引起的异常
  rescue_from ActionController::RoutingError, ActiveRecord::RecordNotFound,
              with: :render_404

  rescue_from NoMethodError,with: :render_500
  def render_404(e)
    # e ActiveRecord::RecordNotFound 或者ActionController::RoutingError 的一个实例
    logger.error { "Rescue From #{e.class}:  #{e.message}" }
    render file: "public/404", status: 404
  end

  def render_500(e)
    logger.error{" Rescue From #{e.class}: #{e.message}"}
    render file: "public/500", status: 500
  end
end
