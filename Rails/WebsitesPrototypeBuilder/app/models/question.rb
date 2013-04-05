class Question < ActiveRecord::Base
	##
	# The question saved on part of the design
	# * *Attribute* :
	# - +assigned_part+ -> string, saving the Id of the selected element
	# - +body+ -> text, saving the question content
	# - +page_id+ -> integer, saves the id of the related page
	#* *Relations* :
	# - has foreign key to the page and the reviewer
	# - has many to one relation with model page
	# - has many answers
	#
  attr_accessible :assigned_part, :body, :page_id
  # Belongs to one page
  belongs_to :page
  # Each question has many answers
  has_many :answers
  #validates that the body isn't empty
  validates :body, :presence => true
  #validates that the assigned part isn't empty
  validates :assigned_part, :presence => true
<<<<<<< HEAD
  
end
=======
  attr_accessible :assigned_part, :body, :page
  has_many :answers,:dependent => :destroy
  
end

>>>>>>> 72d122609efb8f9f36ebbd85721b8339aaff1afa
