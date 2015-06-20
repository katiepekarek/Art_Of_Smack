class User < ActiveRecord::Base
  def self.create_with_bleacher_report(bleacher_response)
    create! do |user|
      user.bleacher_id = bleacher_response["id"]
      user.name = bleacher_response["full_name"]
      user.email = bleacher_response["email"]
      user.teams = bleacher_response["teams"]
    end
  end

  serialize :teams
end
