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
end
