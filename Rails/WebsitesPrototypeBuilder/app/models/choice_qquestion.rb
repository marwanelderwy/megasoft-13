class ChoiceQquestion < ActiveRecord::Base
  belongs_to :questionnaire
  belongs_to :project
  belongs_to :qquestion
  attr_accessible :body, :number, :questionnaire_id, :qquestion_id
end