class WelcomeController < ApplicationController
  def confirm
    flash[:message] = "Thanks your purchase has been confirmed!"
    redirect_to '/'
  end
end
