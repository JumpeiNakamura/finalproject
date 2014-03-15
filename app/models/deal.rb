class Deal < ActiveRecord::Base

  belongs_to :users
  belongs_to :products
  has_many :reviews

  validates_numericality_of :original_price
  validates_numericality_of :deal_price
  validates_inclusion_of :original_price, :in=>0..10000
  validates_inclusion_of :deal_price, :in=>0..10000



end
