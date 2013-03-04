# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  after_filter :discard_flash_on_ajax
  before_filter :setup_home_and_category_menu
  before_filter :set_footer
  
  # Do not render template for AJAX calls
  layout proc{ |c| c.request.xhr? || c.request.format.js? ? false : "application" }

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def bad_url_redirect
    flash[:error] = 'That URL does not exist.'
    redirect_to root_url
  end
  
  private
  
  def setup_home_and_category_menu
    @home_category = Category.find_by_is_home(true)
    @menu_categories = Category.find_all_by_is_home(false)
  end
  
  def correct_safari_and_ie_accept_headers
    ajax_request_types = ['text/javascript', 'application/json', 'text/xml']
    request.accepts.sort!{ |x, y| ajax_request_types.include?(y.to_s) ? 1 : -1 } if request.xhr?
  end
  
  def authorized?(action = action_name, resource = nil)
    if params[:admin]
      logged_in? and params[:admin] != "false"
    else
      logged_in?
    end
  end
  
  def permission
    unless authorized?
      flash[:notice] = "You don't look like an admin to me"
      session[:back_url] = request.referer || root_path
      redirect_to session[:back_url]
    end
  end
  
  def discard_flash_on_ajax
    flash.discard if request.xhr? || request.format.js?
  end

  def set_footer
    @footer = Footer.first
  end
end
