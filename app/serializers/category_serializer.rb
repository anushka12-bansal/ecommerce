class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category_description, :product
end
