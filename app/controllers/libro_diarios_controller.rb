class LibroDiariosController < ApplicationController
  before_action :set_libro_diario, only: [:show, :edit, :update, :destroy]

  # GET /libro_diarios
  # GET /libro_diarios.json
  def index
    @libro_diarios = LibroDiario.all
  end

  # GET /libro_diarios/1
  # GET /libro_diarios/1.json
  def show
  end

  # GET /libro_diarios/new
  def new
    @libro_diario = LibroDiario.new
  end

  # GET /libro_diarios/1/edit
  def edit
  end

  # POST /libro_diarios
  # POST /libro_diarios.json
  def create
    @libro_diario = LibroDiario.new(libro_diario_params)

    respond_to do |format|
      if @libro_diario.save
        format.html { redirect_to @libro_diario, notice: 'Libro diario was successfully created.' }
        format.json { render :show, status: :created, location: @libro_diario }
      else
        format.html { render :new }
        format.json { render json: @libro_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libro_diarios/1
  # PATCH/PUT /libro_diarios/1.json
  def update
    respond_to do |format|
      if @libro_diario.update(libro_diario_params)
        format.html { redirect_to @libro_diario, notice: 'Libro diario was successfully updated.' }
        format.json { render :show, status: :ok, location: @libro_diario }
      else
        format.html { render :edit }
        format.json { render json: @libro_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libro_diarios/1
  # DELETE /libro_diarios/1.json
  def destroy
    @libro_diario.destroy
    respond_to do |format|
      format.html { redirect_to libro_diarios_url, notice: 'Libro diario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libro_diario
      @libro_diario = LibroDiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libro_diario_params
      params[:libro_diario]
    end
end
