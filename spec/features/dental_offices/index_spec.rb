require 'rails_helper'

RSpec.describe 'Dental Offices Index Page' do
  before :each do
    @office1 = create(:dental_office)
    @office2 = create(:dental_office)
    @office3 = create(:dental_office)
    visit '/dental_offices'
  end
  describe 'Content' do
    it 'should show all dental office names as links' do
      expect(page).to have_content(@office1.name)
      expect(page).to have_content(@office2.name)
      expect(page).to have_content(@office3.name)
      expect(page).to have_content("Add Dental Office")
    end
  end
  describe 'Pathing' do
    it 'can direct to New Dental Office page' do
      click_on "Add Dental Office"

      expect(current_path).to eq("/dental_offices/new")
    end
  end
end