class DentalOfficesController < ApplicationController
  def index
    @dental_offices = DentalOffice.order_by_attr_asc("name")
  end
end
