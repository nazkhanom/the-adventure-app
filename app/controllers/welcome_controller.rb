# frozen_string_literal: true
class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    redirect_to adventures_path if user_signed_in?
  end
end
