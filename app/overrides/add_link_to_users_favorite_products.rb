Deface::Override.new(
  virtual_path: "spree/shared/_main_nav_bar",
  name: "add_link_to_users_favorite_products",
  insert_after: "#home-link",
  text: "<% if spree_current_user %><li class='nav-item' data-hook=''><%= link_to 'Favorite Products', favorite_products_path, class: 'nav-link'%></li><% end %>",
  sequence: { before: "auth_shared_login_bar"}
)
