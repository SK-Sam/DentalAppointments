class DentalOfficesController < ApplicationController
  def index
    @dental_offices = DentalOffice.order_by_attr("name")
  end
end
