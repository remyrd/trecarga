class Account < ActiveRecord::Base

  belongs_to :group
  has_many :dailies
  belongs_to :company
  
  validates_presence_of [:group_name, :name]
  validates :name, uniqueness: :true
  before_save {self.name = name.downcase}
  
  #def set_group
  #	self.name = "#{group_name}_#{name}"
  #end
end
