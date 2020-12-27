class DentistsController < ApplicationController
  def index
    @dentists = Dentist.order_by_attr_asc("name")
  end
end
