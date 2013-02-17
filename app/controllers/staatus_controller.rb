class StaatusController < ApplicationController
  # GET /staatus
  # GET /staatus.json
  def index
    @staatus = Staatu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staatus }
    end
  end

  # GET /staatus/1
  # GET /staatus/1.json
  def show
    @staatu = Staatu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staatu }
    end
  end

  # GET /staatus/new
  # GET /staatus/new.json
  def new
    @staatu = Staatu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staatu }
    end
  end

  # GET /staatus/1/edit
  def edit
    @staatu = Staatu.find(params[:id])
  end

  # POST /staatus
  # POST /staatus.json
  def create
    @staatu = Staatu.new(params[:staatu])

    respond_to do |format|
      if @staatu.save
        format.html { redirect_to @staatu, notice: 'Staatu was successfully created.' }
        format.json { render json: @staatu, status: :created, location: @staatu }
      else
        format.html { render action: "new" }
        format.json { render json: @staatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staatus/1
  # PUT /staatus/1.json
  def update
    @staatu = Staatu.find(params[:id])

    respond_to do |format|
      if @staatu.update_attributes(params[:staatu])
        format.html { redirect_to @staatu, notice: 'Staatu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @staatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staatus/1
  # DELETE /staatus/1.json
  def destroy
    @staatu = Staatu.find(params[:id])
    @staatu.destroy

    respond_to do |format|
      format.html { redirect_to staatus_url }
      format.json { head :no_content }
    end
  end
end
