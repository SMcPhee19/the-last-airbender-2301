class AvatarService
  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/')
  end

  def get_members(nation)
    JSON.parse(conn.get("api/v1/characters?affiliation=#{nation}&perPage=150").body, symbolize_names: true)
  end
end
