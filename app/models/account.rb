class Account < ActiveRecord::Base

  belongs_to :group
  has_many :dailies
  belongs_to :company
end
