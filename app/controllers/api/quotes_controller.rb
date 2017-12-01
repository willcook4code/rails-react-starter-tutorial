class Api::QuotesController < ApplicationController

  def show
    @quote = find_quote
  end

  private

  def find_quote
    Quote.where(:id => params[:id]).first
  end
end
