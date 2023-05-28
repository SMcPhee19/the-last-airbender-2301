class SearchController < ApplicationController
  def index
    @name = params[:nation].gsub('+', " ").titleize
    @members = MemberFacade.new.members(params[:nation])
  end
end