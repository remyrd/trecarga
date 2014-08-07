class Daily < ActiveRecord::Base

  belongs_to :company
  belongs_to :account
  
  validates_presence_of [:account_id, :debe, :haber, :tran_type, :company_name]
  

end
