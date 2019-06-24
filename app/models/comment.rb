class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def users_attributes=(users)
    users.each do |index, user_attributes|
      if !user_attributes[:username].blank?
        user = User.find_or_create_by(username: user_attributes[:username])
        self.user = user
      end
    end
  end
end
