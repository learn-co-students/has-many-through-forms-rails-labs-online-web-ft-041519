class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def users_attributes=(users)
    users.each do |index, user_attributes|
      user = User.find_or_create_by(username: user_attributes[:username])
      self.post_categories.build(category: category)
    end
  end
end
