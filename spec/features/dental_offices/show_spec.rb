require 'rails_helper'

RSpec.describe 'Dental Offices Index Page' do
  before :each do
    @office1 = create(:dental_office)
    @dentist1 = create(:dentist, dental_office: @office1)
    @dentist2 = create(:dentist, dental_office: @office1)
    @dentist3 = create(:dentist, dental_office: @office1)
    "visit /dental_offices/#{@office1.id}"
  end
  describe 'Show Page' do
    it 'can display all attributes of the dental office along with all dentists who work there' do
      expect(page).to have_content(@office1.name)
      expect(page).to have_content(@office1.street_address)
      expect(page).to have_content(@office1.city)
      expect(page).to have_content(@office1.state)
      expect(page).to have_content(@office1.zip_code)
      expect(page).to have_content(@office1.insurance_type)
      expect(page).to have_content(@dentist1.name)
      expect(page).to have_content(@dentist2.name)
      expect(page).to have_content(@dentist3.name)
    end
  end
end