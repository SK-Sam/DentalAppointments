require 'rails_helper'

RSpec.describe 'Dentists Index  Page' do
  before :each do
    @office1 = create(:dental_office)
    @dentist1 = create(:dentist, dental_office: @office1)
    @dentist2 = create(:dentist, dental_office: @office1)
    visit '/dentists'
  end
  describe 'Content' do
    it 'should show all dentists names as links' do
      expect(page).to have_content(@dentist1.name)
      expect(page).to have_content(@dentist2.name)
    end
  end
end