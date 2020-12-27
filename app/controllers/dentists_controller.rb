class DentistsController < ApplicationController
  def index
    @dentists = Dentist.order_by_attr("name")
  end
end
