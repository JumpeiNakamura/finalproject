class Deal < ActiveRecord::Base

  belongs_to :users
  belongs_to :products
  has_many :reviews

  validates_numericality_of :original_price, :message => "Original price is required"
  validates_numericality_of :deal_price, :message => "Deal price is required"
  validates_inclusion_of :original_price, :in=>0..10000
  validates_inclusion_of :deal_price, :in=>0..10000

  before_validation :ensure_original_price_has_a_value

  protected
  def ensure_original_price_has_a_value
    if original_price.nil?
      self.original_price = deal_price unless deal_price.blank?
    end
  end

end
