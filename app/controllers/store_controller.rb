class StoreController < ApplicationController

  # 为了方便使用helper中方法
  include StoreHelper

  def index
    @products = Product.all
  end
end
