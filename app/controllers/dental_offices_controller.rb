class DentalOfficesController < ApplicationController
  def index
    @dental_offices = DentalOffice.order_by_attr("name")
  end

  def show
    @dental_office = DentalOffice.find(params[:id])
  end

  def new
  end

  def create
    @dental_office = DentalOffice.new(dental_office_params)
    if @dental_office.save
      flash[:notice] = "Successfully added new Dental Office"
      redirect_to '/dental_offices'
    else
      flash[:error] = @dental_office.errors.full_messages
      render :new
    end
  end

  private 
  def dental_office_params
    params.permit(:name, :street_address, :city, :state, :zip_code, :insurance_type)
  end
end
