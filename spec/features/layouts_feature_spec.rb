require "rails_helper"

describe "Landing page" do
	it "has a navbar" do
		visit('/')

    expect(page).to have_content("After Midnight")
  end
end