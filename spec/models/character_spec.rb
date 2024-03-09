require "spec_helper"

RSpec.describe Character do
  subject(:character) do
    described_class.new(
      base_mind: 5,
      base_body: 5,
      base_spirit: 5
    )
  end

  describe "#max_hp" do
    it "returns the correct value" do
      expect(character.max_hp).to equal(140)
    end
  end
end
