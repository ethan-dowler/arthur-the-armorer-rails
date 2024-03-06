# frozen_string_literal: true

require "rails_helper"

RSpec.describe GameScreenComponent, type: :component do
  subject(:component) { described_class.new(playthrough) }

  let(:playthrough) { Playthrough.create! }

  describe "when the user has not yet created a character" do
    it "renders a character create turbo frame tag" do
      expect(render_inline(component).to_html).to include("/playthroughs/#{playthrough.id}/characters")
    end
  end

  describe "when the user has created a character" do
    before do
      playthrough.create_character(base_mind: 5, base_body: 5, base_spirit: 5)
    end

    it "renders an overworld turbo frame tag" do
      expect(render_inline(component).to_html).to include("/playthroughs/#{playthrough.id}/overworld")
    end
  end
end
