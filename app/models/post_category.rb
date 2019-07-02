class PostCategory < ActiveRecord::Base #join table
  belongs_to :post
  belongs_to :category
end
