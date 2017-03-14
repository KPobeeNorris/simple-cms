class Page < ApplicationRecord

  belongs_to :subject
  has_many :sections
  has_many_and belongs_to :admin_users
end
