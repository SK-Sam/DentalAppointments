class DentalOfficesController < ApplicationController
  def index
    @dental_offices = DentalOffice.order_by_attr("name")
  end
  def new
  end

  def create
    @dental_office = DentalOffice.new(dental_office_params)
    if @dental_office.save
      redirect_to '/dental_offices'
    else
      render :new
    end
  end

  private 
  def dental_office_params
    params.permit(:name, :street_address, :city, :state, :zip_code, :insurance_type)
  end
end
