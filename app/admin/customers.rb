# Acess to Customer via active admin
ActiveAdmin.register Customer do
  permit_params :fullname, :email, :phone, :image, :province_id, :avatar, :notes
end
