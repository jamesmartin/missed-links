Given /^that the social network feed returns no results$/ do
  social_network = SocialNetwork.new()
  social_network.respond_to('/some/path') 
end
