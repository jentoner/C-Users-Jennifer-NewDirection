# Access to Province via active admin
ActiveAdmin.register Product do
  permit_params :name, :description, :price, :stock_quantity, :image
end
