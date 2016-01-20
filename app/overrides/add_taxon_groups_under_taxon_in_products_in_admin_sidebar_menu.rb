Deface::Override.new(
  virtual_path: 'spree/admin/shared/_product_sub_menu',
  name: 'taxon_groups_admin_sidebar_product_menu_item',
  insert_bottom: '.admin-subnav',
  text: '<%= tab :taxon_groups, :match_path => "/taxon_groups" %>'
)
