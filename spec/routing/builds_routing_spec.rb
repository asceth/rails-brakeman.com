require "spec_helper"

describe "GET to :owner_name/:repository_name/builds" do
  it "should route to BuildsController#index" do

    expect({get: 'flyerhzm/rails-brakeman.com/builds'}).to route_to(
          controller: "builds",
          action: "index",
          owner_name: "flyerhzm",
          repository_name: "rails-brakeman.com"
        )
  end
end

describe "GET to :owner_name/:repository_name/builds/:id" do
  it "should route to BuildsController#show" do

    expect({get: 'flyerhzm/rails-brakeman.com/builds/1'}).to route_to(
          controller: "builds",
          action: "show",
          owner_name: "flyerhzm",
          repository_name: "rails-brakeman.com",
          id: "1"
        )
  end
end
