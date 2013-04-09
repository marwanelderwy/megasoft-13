class Qquestion < ActiveRecord::Base
  belongs_to :questionnaire
  attr_accessible :body, :number, :type
  has_many :choices,:dependent => :destroy
  accepts_nested_attributes_for :choices, :reject_if => lambda {|a| a[:body].blank?}, :allow_destroy => true
  attr_accessible :choices_attributes
end
