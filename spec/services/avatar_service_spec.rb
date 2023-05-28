require 'rails_helper'

RSpec.describe AvatarService do
  it 'can consume the api and return the nation members' do
    fire_nation = AvatarService.new.get_members('Fire')

    expect(fire_nation).to be_a(Array)
    expect(fire_nation.count).to eq(111)
    expect(fire_nation.first).to have_key(:_id)
    expect(fire_nation.first).to have_key(:allies)
    expect(fire_nation.first).to have_key(:enemies)
    expect(fire_nation.first).to have_key(:photoUrl)
    expect(fire_nation.first).to have_key(:name)
    expect(fire_nation.first).to have_key(:affiliation)
  end
end