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

class User < ActiveRecord::Base
  before_create :add_token
  has_many :posts
  has_many :comments
  
  private
  def add_token
    self.auth_token = SecureRandom.hex
  end
end
