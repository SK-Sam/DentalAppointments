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
  describe 'class methods' do
    describe '::order_by_attr_asc' do
      it 'can order all rows by specific attr passed in as argument' do
        office1 = create(:dental_office, name: 'a')
        office2 = create(:dental_office, name: 'b')
        office3 = create(:dental_office, name: 'c')
        ordered_offices = DentalOffice.order_by_attr_asc("name")

        expect(ordered_offices[0]).to eq(office1)
        expect(ordered_offices[1]).to eq(office2)
        expect(ordered_offices[2]).to eq(office3)

        ordered_offices = DentalOffice.order_by_attr_asc("name", "DESC")
        expect(ordered_offices[0]).to eq(office3)
        expect(ordered_offices[1]).to eq(office2)
        expect(ordered_offices[2]).to eq(office1)
      end
    end
  end
end
