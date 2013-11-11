class Tweet < ActiveRecord::Base
  attr_accessible :status

  validates :status, :length => { maximum: 140, minimum: 1}
end
