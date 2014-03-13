class User < ActiveRecord::Base

  has_many :deals
  has_many :products, :through => :deals
  has_many :reviews

  validates_presence_of :first_name ,:message =>"no data"
  validates_presence_of :last_name ,:message =>"no data"
  validates_uniqueness_of :email


end
