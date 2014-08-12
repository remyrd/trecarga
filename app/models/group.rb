class Group < ActiveRecord::Base

  has_many :accounts
  belongs_to :company
end
