class HomeController < ApplicationController
  allow_unauthenticated_access only: %i[index]

  def index
    redirect_to new_session_path unless Current.user
  end
end