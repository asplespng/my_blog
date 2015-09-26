# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  auth_token :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :say_hello
  
  has_many :posts
  def say_hello
    "Hello #{object.email}!"
  end
end
