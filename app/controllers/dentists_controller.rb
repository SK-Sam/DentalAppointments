class DentistsController < ApplicationController
  def index
    @dentists = Dentist.all
  end
end
