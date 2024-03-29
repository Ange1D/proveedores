class ProveedorsController < ApplicationController
  before_action :set_proveedor, only: %i[ show edit update destroy]

  # GET /proveedors or /proveedors.json
  def index
    @proveedors = Proveedor.all
  end

  # GET /proveedors/1 or /proveedors/1.json
  def show
  end

  # GET /proveedors/new
  def new
    @proveedor = Proveedor.new
  end

  # GET /proveedors/1/edit
  def edit
  end

  # POST /proveedors or /proveedors.json
  def create
    @proveedor = Proveedor.new(proveedor_params)

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to proveedor_url(@proveedor), notice: "Proveedor creado exitosamente." }
        format.json { render :show, status: :created, location: @proveedor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedors/1 or /proveedors/1.json
  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html { redirect_to proveedor_url(@proveedor), notice: "Proveedor actuallizado exitosamente." }
        format.json { render :show, status: :ok, location: @proveedor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedors/1 or /proveedors/1.json
  def destroy
    begin
      @proveedorDestroy = Proveedor.mes_registro.find(params[:id])
      @proveedorDestroy.destroy

      respond_to do |format|
        format.html { redirect_to proveedors_url, notice: "Proveedor eliminado exitosamente." }
        format.json { head :no_content }
      end

    rescue

      respond_to do |format|
        format.html { redirect_to proveedors_url, notice: "Este Proveedor no se puede eliminar." }
        format.json { head :no_content }
      end
      
    end
   
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
      
    end


    # Only allow a list of trusted parameters through.
    def proveedor_params
      params.require(:proveedor).permit(:razonSocial, :rfc, :nombre, :apellidoPaterno, :apellidoMaterno, :correo, :clabe, :Pago)
    end
end
