class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :name , :price, :manufacturing_date,:description, :expire_date, :manufactured_by, :users


end
