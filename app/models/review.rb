class Review < ActiveRecord::Base

  belongs_to :users
  belongs_to :deals

  validates_numericality_of :user_id


end
