require 'rails_helper'

RSpec.describe Dentist, type: :model do
  before :each do

  end
  describe 'relationships' do
    it { should have_many :appointments }
    it { should have_many(:patients).through(:appointments) }
    it { should belong_to :dental_office }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :discipline }
    it { should validate_presence_of :sex }
  end
  describe 'class methods' do
    describe '::order_by_attr_asc' do
      it 'can order all rows by specific attr passed in as argument' do
        office1 = create(:dental_office)
        dentist1 = create(:dentist, dental_office: office1, name: 'a')
        dentist2 = create(:dentist, dental_office: office1, name: 'b')
        dentist3 = create(:dentist, dental_office: office1, name: 'c')
        ordered_dentists = Dentist.order_by_attr("name")

        expect(ordered_dentists[0]).to eq(dentist1)
        expect(ordered_dentists[1]).to eq(dentist2)
        expect(ordered_dentists[2]).to eq(dentist3)

        ordered_dentists = Dentist.order_by_attr("name", "DESC")
        expect(ordered_dentists[0]).to eq(dentist3)
        expect(ordered_dentists[1]).to eq(dentist2)
        expect(ordered_dentists[2]).to eq(dentist1)

        ordered_dentists = Dentist.order_by_attr("id")

        expect(ordered_dentists[0]).to eq(dentist1)
        expect(ordered_dentists[1]).to eq(dentist2)
        expect(ordered_dentists[2]).to eq(dentist3)
      end
    end
  end
end
