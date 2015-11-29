class DevilsController < ApplicationController
  before_action :set_devil, only: [:show, :edit, :update, :destroy]

  # GET /devils
  # GET /devils.json
  def index
    @devils = Devil.all
  end

  # GET /devils/1
  # GET /devils/1.json
  def show
  end

  # GET /devils/new
  def new
    @devil = Devil.new
  end

  # GET /devils/1/edit
  def edit
  end

  # POST /devils
  # POST /devils.json
  def create
    @devil = Devil.new(devil_params)

    respond_to do |format|
      if @devil.save
        format.html { redirect_to @devil, notice: 'Devil was successfully created.' }
        format.json { render :show, status: :created, location: @devil }
      else
        format.html { render :new }
        format.json { render json: @devil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devils/1
  # PATCH/PUT /devils/1.json
  def update
    respond_to do |format|
      if @devil.update(devil_params)
        format.html { redirect_to @devil, notice: 'Devil was successfully updated.' }
        format.json { render :show, status: :ok, location: @devil }
      else
        format.html { render :edit }
        format.json { render json: @devil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devils/1
  # DELETE /devils/1.json
  def destroy
    @devil.destroy
    respond_to do |format|
      format.html { redirect_to devils_url, notice: 'Devil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devil
      @devil = Devil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devil_params
      params.require(:devil).permit(:name, :LC, :LD, :PV, :OP, :note)
    end
end
