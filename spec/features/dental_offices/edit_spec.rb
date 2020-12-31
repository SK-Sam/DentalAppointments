require 'rails_helper'

RSpec.describe 'Edit Page' do
  before :each do
    @office1 = create(:dental_office)
    visit "/dental_offices/#{@office1.id}/edit"
  end
  describe 'Functionality of filling in form' do
    it 'can accept a fully filled out form and edit an existing row' do
      name = Faker::Company.name
      street_address = Faker::Address.street_address
      city = Faker::Address.city
      state = Faker::Address.state_abbr
      zip_code = Faker::Number.leading_zero_number(digits: 5)
      insurance_type = "HMO"

      fill_in 'name', with: name
      fill_in 'street_address', with: street_address
      fill_in 'city', with: city
      fill_in 'state', with: city
      fill_in 'zip_code', with: zip_code
      fill_in 'insurance_type', with: insurance_type
      click_on 'Edit Dental Office'

      expect(current_path).to eq("/dental_offices/#{@office1.id}")
      expect(page).to have_content(name)
      expect(page).to have_content(street_address)
      expect(page).to have_content(city)
      expect(page).to have_content(zip_code)
      expect(page).to have_content(insurance_type)   
    end
    it 'can display errors user made when improperly submitting a form' do
      name = Faker::Company.name

      fill_in 'name', with: name

      click_on 'Edit Dental Office'
      
      within("section.flash") do
        expect(page).to have_content("Street address can't be blank")
        expect(page).to have_content("City can't be blank")
        expect(page).to have_content("State can't be blank")
        expect(page).to have_content("Zip code can't be blank")
        expect(page).to have_content("Insurance type can't be blank")
      end
      expect(page).to have_content(@office1.name)
    end
    it 'can invalidate numbers in name' do
      fill_in 'name', with: '1'

      click_on 'Edit Dental Office'

      within("section.flash") do
        expect(page).to have_content("Name cannot have numbers")
      end
    end
  end
end