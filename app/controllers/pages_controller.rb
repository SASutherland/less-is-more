class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def survey
  end

  def results
  end
end
