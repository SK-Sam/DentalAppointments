require 'rails_helper'

RSpec.describe 'Root Welcome Page' do
  describe 'Content' do
    before :each do
      visit '/'
    end
    it 'should welcome user' do
      expect(page).to have_content("Welcome to Dental Directory")
      expect(page).to have_content("Dental Offices")
      expect(page).to have_content("Dentists")
    end
    describe 'should direct links to proper index pages' do
      it 'should direct Dental Offices link to dental offices index' do
        click_on "Dental Offices"

        expect(current_path).to eq("/dental_offices")
      end
      it 'should direct Dentists link to dentists index' do
        click_on "Dentists"

        expect(current_path).to eq("/dentists")
      end
    end
  end
end