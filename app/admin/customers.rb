# Acess to Customer via active admin
ActiveAdmin.register Customer do
  permit_params :name, :email, :phone, :image, :province_id, :notes
end
