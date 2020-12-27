require 'rails_helper'

RSpec.describe Appointment, type: :model do
  before :each do

  end
  describe 'relationships' do
    it { should belong_to :dentist }
    it { should belong_to :patient }
  end
  describe 'validations' do
    it { should validate_presence_of :date }
    it { should validate_presence_of :service }
    it { should validate_presence_of :appt_length }
  end
end
