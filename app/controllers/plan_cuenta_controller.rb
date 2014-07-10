class PlanCuentaController < ApplicationController
  before_action :set_plan_cuentum, only: [:show, :edit, :update, :destroy]

  # GET /plan_cuenta
  # GET /plan_cuenta.json
  def index
    @plan_cuenta = PlanCuentum.all
  end

  # GET /plan_cuenta/1
  # GET /plan_cuenta/1.json
  def show
  end

  # GET /plan_cuenta/new
  def new
    @plan_cuentum = PlanCuentum.new
  end

  # GET /plan_cuenta/1/edit
  def edit
  end

  # POST /plan_cuenta
  # POST /plan_cuenta.json
  def create
    @plan_cuentum = PlanCuentum.new(plan_cuentum_params)

    respond_to do |format|
      if @plan_cuentum.save
        format.html { redirect_to @plan_cuentum, notice: 'Plan cuentum was successfully created.' }
        format.json { render :show, status: :created, location: @plan_cuentum }
      else
        format.html { render :new }
        format.json { render json: @plan_cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_cuenta/1
  # PATCH/PUT /plan_cuenta/1.json
  def update
    respond_to do |format|
      if @plan_cuentum.update(plan_cuentum_params)
        format.html { redirect_to @plan_cuentum, notice: 'Plan cuentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_cuentum }
      else
        format.html { render :edit }
        format.json { render json: @plan_cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_cuenta/1
  # DELETE /plan_cuenta/1.json
  def destroy
    @plan_cuentum.destroy
    respond_to do |format|
      format.html { redirect_to plan_cuenta_url, notice: 'Plan cuentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_cuentum
      @plan_cuentum = PlanCuentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_cuentum_params
      params[:plan_cuentum]
    end
end
