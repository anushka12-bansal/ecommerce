class UserSerializer < ActiveModel::Serializer
  attributes :id, :product, :first_name, :last_name, :email, :address, :city, :state, :adhar_number, :contact_number, :age 
end
