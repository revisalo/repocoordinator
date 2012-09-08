class CarpetaController < ApplicationController
  # GET /carpeta
  # GET /carpeta.json
  def index
    @carpeta = Carpetum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carpeta }
    end
  end

  # GET /carpeta/1
  # GET /carpeta/1.json
  def show
    @carpetum = Carpetum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carpetum }
    end
  end

  # GET /carpeta/new
  # GET /carpeta/new.json
  def new
    @carpetum = Carpetum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carpetum }
    end
  end

  # GET /carpeta/1/edit
  def edit
    @carpetum = Carpetum.find(params[:id])
  end

  # POST /carpeta
  # POST /carpeta.json
  def create
    @carpetum = Carpetum.new(params[:carpetum])

    respond_to do |format|
      if @carpetum.save
        format.html { redirect_to @carpetum, notice: 'Carpetum was successfully created.' }
        format.json { render json: @carpetum, status: :created, location: @carpetum }
      else
        format.html { render action: "new" }
        format.json { render json: @carpetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carpeta/1
  # PUT /carpeta/1.json
  def update
    @carpetum = Carpetum.find(params[:id])

    respond_to do |format|
      if @carpetum.update_attributes(params[:carpetum])
        format.html { redirect_to @carpetum, notice: 'Carpetum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carpetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carpeta/1
  # DELETE /carpeta/1.json
  def destroy
    @carpetum = Carpetum.find(params[:id])
    @carpetum.destroy

    respond_to do |format|
      format.html { redirect_to carpeta_url }
      format.json { head :no_content }
    end
  end
end
