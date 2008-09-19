class User < ActiveRecord::Base

end

class Person < ActiveRecord::Base
end

class Post < ActiveRecord::Base

  validates_presence_of :title, :body
  has_and_belongs_to_many :categories
  has_many :comments
  belongs_to :user
  has_and_belongs_to_many :tags

end

class Category < ActiveRecord::Base

  acts_as_list if defined? ActiveRecord::Acts::List

  validates_presence_of :name
  has_and_belongs_to_many :posts

end

class Comment < ActiveRecord::Base

  validates_presence_of :name, :email, :body
  belongs_to :post

end

class Tag < ActiveRecord::Base

end

class Page < ActiveRecord::Base
  
end