class TempersController < ApplicationController
  before_action :set_temper, only: [:show, :edit, :update, :destroy]

  # GET /tempers
  # GET /tempers.json
  def index
    @tempers = Temper.all
  end

  # GET /tempers/1
  # GET /tempers/1.json
  def show
  end

  # GET /tempers/new
  def new
    @temper = Temper.new
  end

  # GET /tempers/1/edit
  def edit
  end

  # POST /tempers
  # POST /tempers.json
  def create
    @temper = Temper.new(temper_params)

    respond_to do |format|
      if @temper.save
        format.html { redirect_to @temper, notice: 'Temper was successfully created.' }
        format.json { render :show, status: :created, location: @temper }
      else
        format.html { render :new }
        format.json { render json: @temper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempers/1
  # PATCH/PUT /tempers/1.json
  def update
    respond_to do |format|
      if @temper.update(temper_params)
        format.html { redirect_to @temper, notice: 'Temper was successfully updated.' }
        format.json { render :show, status: :ok, location: @temper }
      else
        format.html { render :edit }
        format.json { render json: @temper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempers/1
  # DELETE /tempers/1.json
  def destroy
    @temper.destroy
    respond_to do |format|
      format.html { redirect_to tempers_url, notice: 'Temper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temper
      @temper = Temper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temper_params
      params.require(:temper).permit(:name, :PV, :OP, :note)
    end
end
