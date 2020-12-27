class DentalOfficesController < ApplicationController
  def index
    @dental_offices = DentalOffice.all
  end
end
