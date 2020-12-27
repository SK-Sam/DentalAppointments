require 'rails_helper'

RSpec.describe Patient, type: :model do
  before :each do

  end
  describe 'relationships' do
    it { should have_many :appointments }
    it { should have_many(:dentists).through(:appointments) }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :insurance_type }
    it { should validate_presence_of :sex }
    it { should validate_presence_of :preexisting_conditions }
  end
end
