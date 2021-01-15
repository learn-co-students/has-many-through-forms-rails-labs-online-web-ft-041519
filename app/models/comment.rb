class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: lambda {|attributes| attributes['kind'].blank?}

  def user_attributes=(user_attributes)
    user_attributes.each do |user_attribute_key, user_attribute_value|
      if user_attribute_key == "username" 
          user = User.find_or_create_by(username: user_attribute_value)
          self.user = user  
      end
    end 
  end

end
