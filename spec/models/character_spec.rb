require "spec_helper"

RSpec.describe Character do
  subject(:character) do
    described_class.new(
      base_mind: 5,
      base_body: 5,
      base_spirit: 5
    )
  end

  describe "#attack_power" do
    it "returns the correct value" do
      expect(character.attack_power).to equal(35)
    end
  end
end
