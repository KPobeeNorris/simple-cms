class AdminUser < ApplicationRecord

  has_many_and belongs_to :pages
  
end
