class VehiculesController < InheritedResources::Base
  def index
    @vehicules = Vehicule.where(["owner_name LIKE ?", "%#{params[:search]}%"])
  end
  private

    def vehicule_params
      params.require(:vehicule).permit(:date, :owner_name, :N°cin, :vehicules_type, :mark, :color, :N°engine)
    end
  
end

