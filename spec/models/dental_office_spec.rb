require 'rails_helper'

RSpec.describe DentalOffice, type: :model do
  before :each do

  end
  describe 'relationships' do
    it { should have_many :dentists }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :street_address }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :zip_code }
    it { should validate_presence_of :insurance_type }
  end
end
