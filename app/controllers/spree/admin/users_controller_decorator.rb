module Spree::Admin::UsersControllerDecorator
  def favorite_products
    @favorite_products = @user.favorite_products
    @favorite_variants = @user.favorite_variants
  end
end
::Spree::Admin::UsersController.prepend Spree::Admin::UsersControllerDecorator
