class Opportunity < ActiveRecord::Base
  self.table_name = 'salesforcebearer.opportunity' unless ENV["RAILS_ENV"] == "development"
end
