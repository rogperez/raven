require 'rails_helper'

RSpec.describe Creative, type: :model do
  describe "canary" do
    let(:creative) { build(:creative) }

    it { expect(creative.name).to eq("My Creative") }
  end
end
