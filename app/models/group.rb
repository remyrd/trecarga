class Group < ActiveRecord::Base

  has_many :accounts, dependent: :destroy
  belongs_to :company
  
  validates :name, uniqueness: :true, presence: :true
  before_save {self.name = name.downcase}
end
