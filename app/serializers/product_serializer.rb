class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name , :price, :manufacturing_date,:description, :expire_date, :manufactured_by, :users
end
