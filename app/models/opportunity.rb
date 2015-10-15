class Opportunity < ActiveRecord::Base
  validates :name, presence: true, message: "Debe existir un nombre"
  
  self.table_name = 'salesforcebearer.opportunity'
end