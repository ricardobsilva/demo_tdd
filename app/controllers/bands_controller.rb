class BandsController < ApplicationController
  def index
    @bands = Band.all
  end
end
