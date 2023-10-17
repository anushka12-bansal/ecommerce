class UserSerializer < ActiveModel::Serializer
  attributes :id ,:first_name, :last_name, :email, :address, :city, :state, :adhar_number, :contact_number, :age 
end
