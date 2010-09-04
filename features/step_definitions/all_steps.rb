Given /^that the social network feed returns no results$/ do
  json_response = {}
  social_network = SocialNetwork.new()
  social_network.authenticate
  social_network.return_json(json_response)
end
