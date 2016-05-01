require 'rails_helper'

RSpec.describe BandsController, type: :controller do

  describe "GET #index" do
    let(:my_bands){create_list(:band, 10)}

    before(:each) do
      get :index
    end
    
    it "assigns all bands as @bands" do
      expect(assigns(:bands)).to eq(my_bands)
    end
  end

end
