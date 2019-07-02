class Comment < ActiveRecord::Base #join table
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank
end
