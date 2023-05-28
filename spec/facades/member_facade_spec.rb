require 'rails_helper'

RSpec.describe MemberFacade do
  it 'can create a Member PORO' do
    members = MemberFacade.members('Fire')
    
    expect(members.first).to be_a(Member)
    expect(members.last).to be_a(Member)
  end
end