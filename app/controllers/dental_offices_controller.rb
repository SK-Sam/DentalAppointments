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

  def edit
    @dental_office = DentalOffice.find(params[:id])
  end

  def update
    @dental_office = DentalOffice.find(params[:id])
    if @dental_office.update(dental_office_params)
      flash[:notice] = "Successfully edited Dental Office"
      redirect_to "/dental_offices/#{@dental_office.id}"
    else
      flash[:error] = @dental_office.errors.full_messages
      @dental_office = DentalOffice.find(params[:id])
      render :edit
    end
  end

  def destroy
    DentalOffice.destroy(params[:id])
    redirect_to "/dental_offices"
  end

  private 
  def dental_office_params
    params.permit(:name, :street_address, :city, :state, :zip_code, :insurance_type)
  end
end
