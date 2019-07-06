class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accept_nested_attributes_for :users, reject_if: proc { |attributes| attributes[username].blank? }

  def users_attributes=(user_attributes)
    users_attributes.values.each do |user_attributes|
      user = User.find_or_create_by(user_attribute)
      self.users << user
    end
  end
end