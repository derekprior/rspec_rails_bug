require 'spec_helper'

describe "a bug" do
  let(:user) { "me" }

  it "doesn't let me use 'visit' one level deep" do
    visit 'http://google.com'
  end

  describe "a second level" do
    it "lets me use 'visit' nested in another describe" do
      visit 'http://google.com'
    end
  end
end

