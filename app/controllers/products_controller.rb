class ProductsController < ApplicationController
  def index
    render json: ProductBlueprint.render(Product.all, view: :normal), status: :ok
  end

  def show
    render json: ProductBlueprint.render(Product.find(params[:id]), view: :show), status: :ok
  end
end
