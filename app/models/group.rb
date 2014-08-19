class Group < ActiveRecord::Base

  has_many :accounts
  belongs_to :company
  
  validates :name, uniqueness: :true, presence: :true
  before_save {self.name = "#{company_name}_#{name.downcase}"}
end
