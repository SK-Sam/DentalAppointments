class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  def self.order_by_attr_asc(attr, asc_or_desc = "ASC")
    all.order("#{attr} #{asc_or_desc}")
  end
end
