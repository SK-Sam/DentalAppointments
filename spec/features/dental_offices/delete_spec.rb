require 'rails_helper'

RSpec.describe 'Delete Funtionality' do
  before :each do
    @office1 = create(:dental_office)
    visit "/dental_offices/#{@office1.id}"
  end
  it 'can see a Delete button and remove office from list' do
    delete_text = "Delete Office From List"
    expect(page).to have_content(delete_text)

    click_on delete_text

    expect(current_path).to eq("/dental_offices")
    expect(page).not_to have_content(@office1.name)
  end
end