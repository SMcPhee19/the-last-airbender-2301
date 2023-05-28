class Member
  attr_reader :id,
              :allies,
              :enemies,
              :photourl,
              :name,
              :affiliation

  def initialize(data)
    @id = data[:id]
    @allies = if data[:allies] == []
      "None"
    else
      data[:allies]
    end
    @enemies = if data[:enemies] == []
      "None"
    else
      data[:enemies]
    end
    @photourl = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end