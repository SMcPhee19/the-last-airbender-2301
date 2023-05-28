class MemberFacade
  def self.members(nation)
    members = AvatarService.get_members(nation).map do |member_data|
      Member.new(member_data)
    end
  end
end