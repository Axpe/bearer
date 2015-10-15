class Account < ActiveRecord::Base
  self.table_name = 'salesforcebearer.account'
  self.inheritance_column = nil
end
