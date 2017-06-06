class PagesController < ApplicationController
  def home
    @portfolio_items = PortfolioItem.all
  end

  def about
  end

  def contact
  end
end
