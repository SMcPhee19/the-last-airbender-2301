class MemberFacade
  def members(nation)
    members = AvatarService.new.get_members(nation).map do |member_data|
      Member.new(member_data)
    end
  end
end