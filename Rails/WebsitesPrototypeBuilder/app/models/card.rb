class Card < ActiveRecord::Base
  attr_accessible :cardsort_id, :description, :group_id, :title
  belongs_to :cardsort
end