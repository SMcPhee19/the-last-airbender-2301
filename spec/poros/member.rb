require 'rails_helper'

RSpec.describe Member do
  it 'exists with attributes' do
    uncle_iroh = Member.new({
      affiliation: " Fire Nation Fire Nation military (formerly) Fire Nation Royal Family Jasmine Dragon Order of the White Lotus Spirit World",
      allies: ["Zuko", ""],
      enemies: ["Ozai"],
      id: "5cf5679a915ecad153ab6976",
      name: "Iroh",
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/c/c1/Iroh_smiling.png/revision/latest?cb=20130626131914" })

    expect(uncle_iroh).to be_a(Member)
    expect(uncle_iroh.affiliation).to eq(" Fire Nation Fire Nation military (formerly) Fire Nation Royal Family Jasmine Dragon Order of the White Lotus Spirit World")
    expect(uncle_iroh.allies).to eq(["Zuko", ""])
    expect(uncle_iroh.enemies).to eq(["Ozai"])
    expect(uncle_iroh.id).to eq("5cf5679a915ecad153ab6976")
    expect(uncle_iroh.name).to eq("Iroh")
    expect(uncle_iroh.photourl).to eq("https://vignette.wikia.nocookie.net/avatar/images/c/c1/Iroh_smiling.png/revision/latest?cb=20130626131914")
  end
end