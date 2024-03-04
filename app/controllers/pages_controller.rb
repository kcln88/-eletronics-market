class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :category ]

  def home
    @products = Product.all
    if params[:query]
      @products = Product.search_product(params[:query])
    end
  end

  def category
    @category = params[:category]
    @products = Product.where(category: @category)
  end
end
