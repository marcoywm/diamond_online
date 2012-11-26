class AdminController < ApplicationController
  before_filter :require_sudo

end
