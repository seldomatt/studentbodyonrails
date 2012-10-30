class IndexstudentsController < ApplicationController
  # GET /indexstudents
  # GET /indexstudents.json
  def index
    @indexstudents = Indexstudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @indexstudents }
    end
  end

  # GET /indexstudents/1
  # GET /indexstudents/1.json
  def show
    @indexstudent = Indexstudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @indexstudent }
    end
  end

  # GET /indexstudents/new
  # GET /indexstudents/new.json
  def new
    @indexstudent = Indexstudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @indexstudent }
    end
  end

  # GET /indexstudents/1/edit
  def edit
    @indexstudent = Indexstudent.find(params[:id])
  end

  # POST /indexstudents
  # POST /indexstudents.json
  def create
    @indexstudent = Indexstudent.new(params[:indexstudent])

    respond_to do |format|
      if @indexstudent.save
        format.html { redirect_to @indexstudent, notice: 'Indexstudent was successfully created.' }
        format.json { render json: @indexstudent, status: :created, location: @indexstudent }
      else
        format.html { render action: "new" }
        format.json { render json: @indexstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /indexstudents/1
  # PUT /indexstudents/1.json
  def update
    @indexstudent = Indexstudent.find(params[:id])

    respond_to do |format|
      if @indexstudent.update_attributes(params[:indexstudent])
        format.html { redirect_to @indexstudent, notice: 'Indexstudent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @indexstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indexstudents/1
  # DELETE /indexstudents/1.json
  def destroy
    @indexstudent = Indexstudent.find(params[:id])
    @indexstudent.destroy

    respond_to do |format|
      format.html { redirect_to indexstudents_url }
      format.json { head :no_content }
    end
  end
end
