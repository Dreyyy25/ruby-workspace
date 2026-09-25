class DojoBranchesController < ApplicationController
  def index
    @dojos = DojoBranch.all
  end
end
