class Opportunity < ActiveRecord::Base
  validates :name, presence: true
  self.table_name = 'salesforcebearer.opportunity'
end