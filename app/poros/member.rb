class Member
  attr_reader :id,
              :allies,
              :enemies,
              :photourl,
              :name,
              :affiliation

  def initialize(data)
    @id = data[:id]
    @allies = if data[:allies].empty?
      "None"
    else
      data[:allies]
    end
    @enemies = if data[:enemies].empty?
      "None"
    else
      data[:enemies]
    end
    @photourl = if data[:photoUrl] == nil
      "Does not have a photo"
    else
      data[:photoUrl]
    end
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end