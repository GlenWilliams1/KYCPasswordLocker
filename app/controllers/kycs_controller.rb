# app/controllers/kycs_controller.rb
class KycsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @kycs = current_user.kycs
    end
  
    def new
      @kyc = current_user.kycs.new
    end
  
    def create
      @kyc = current_user.kycs.new(kyc_params)
  
      if @kyc.save
        redirect_to kycs_path, notice: 'KYC information successfully added.'
      else
        render :new
      end
    end
  
    private
  
    def kyc_params
      params.require(:kyc).permit(:name, :document)
    end
  end
  