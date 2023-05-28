require 'rails_helper'

RSpec.describe 'Search#index' do
  before(:each) do
    @members = MemberFacade.new.members('Fire')

    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
  end

  it 'can search for members of a nation' do
    expect(current_path).to eq(search_path)
    expect(page).to have_content('Number of Members living in the Fire Nation: 97')
  end

  it 'displays the first 25 members of the nation with the relevant data' do
    within '#member-1' do
      expect(page).to have_content('Name: Chan (Fire Nation admiral)')
      expect(page).to have_content('Photo: Does not have a photo')
      expect(page).to have_content('Allies: ["Ozai"]')
      expect(page).to have_content('Enemies: ["Earth Kingdom"]')
      expect(page).to have_content('Affiliations: Fire Nation Navy')
    end

    within '#member-13' do
      expect(page).to have_content('Name: Chey')
      expect(page).to have_content('Photo: https://vignette.wikia.nocookie.net/avatar/images/8/8d/Chey.png/revision/latest?cb=20140116103519')
      expect(page).to have_content('Allies: ["Jeong Jeong"]')
      expect(page).to have_content('Enemies: ["Fire Nation"]')
      expect(page).to have_content('Affiliations: Fire Nation Army (formerly)')
    end

    within '#member-25' do
      expect(page).to have_content('Name: Fire Nation train conductor')
      expect(page).to have_content('Photo: https://vignette.wikia.nocookie.net/avatar/images/c/cb/Fire_Nation_train_conductor.png/revision/latest?cb=20130308171223')
      expect(page).to have_content('Allies: ["Aang"]')
      expect(page).to have_content('Enemies: ["Combustion Man"]')
      expect(page).to have_content('Affiliations: Fire Nation Fire Nation train')
    end
  end
end