Webrat.configure do |config|
  config.mode = :mechanize
end

class MechanizedWorld < Webrat::MechanizeAdapter
  include Webrat::Matchers
  include Webrat::Methods
  # no idea why we need this but without it response_code is not always recognized
  Webrat::Methods.delegate_to_session :response_code, :response_body
  # this is needed for webrat_steps.rb
  Webrat::Methods.delegate_to_session :response
end

module ApplicationHelper
  
  def start_social_network(name)
  end
  
  def remember_social_network_user(username)
  end
  
  def register_user_activity(activity)
  end
  
  def visit_home_page
    @users_browser = Mechanize.new
    Spec::Matchers.define :redirected_to_the_url? do |url|
      match do |users_browser|
        users_browser.redirected_to_the_url?(url)
      end
    end
  end
  
  def users_browser
  end
  
end


World(ApplicationHelper)