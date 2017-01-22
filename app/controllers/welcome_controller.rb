class WelcomeController < ApplicationController
  def index
    flash[:notice] = "欢迎来到超体营！"
  end
end
