class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :garantia]

  def home
  end

  def garantia
  end
end
