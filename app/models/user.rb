class User < ApplicationRecord
  has_many :books
  has_many :products
end	


