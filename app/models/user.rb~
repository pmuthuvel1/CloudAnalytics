class User < ActiveRecord::Base
  attr_accessible :username, :usertype
  has_many :server_instances
  validates :username, :usertype => { :maximum => 140 }

end
