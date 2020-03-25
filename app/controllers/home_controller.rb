class HomeController < ApplicationController
  def index
    @groups = Group.all
    @ruby = Group.search_tab("ruby")
    @react = Group.search_tab("react")
    @javascript = Group.search_tab("javascript")
    @python = Group.search_tab("python")
    @php = Group.search_tab("php")
    @c = Group.search_tab("c++")
  end


end
