class JobvertsController < ApplicationController
  # GET /jobverts
  # GET /jobverts.xml
  def index
    @jobverts = Jobvert.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobverts }
    end
  end

  # GET /jobverts/1
  # GET /jobverts/1.xml
  def show
    @jobvert = Jobvert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @jobvert }
    end
  end

  # GET /jobverts/new
  # GET /jobverts/new.xml
  def new
    @jobvert = Jobvert.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @jobvert }
    end
  end

  # GET /jobverts/1/edit
  def edit
    @jobvert = Jobvert.find(params[:id])
  end

  # POST /jobverts
  # POST /jobverts.xml
  def create
    @jobvert = Jobvert.new(params[:jobvert])

    respond_to do |format|
      if @jobvert.save
        format.html { redirect_to(@jobvert, :notice => 'Jobvert was successfully created.') }
        format.xml  { render :xml => @jobvert, :status => :created, :location => @jobvert }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @jobvert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jobverts/1
  # PUT /jobverts/1.xml
  def update
    @jobvert = Jobvert.find(params[:id])

    respond_to do |format|
      if @jobvert.update_attributes(params[:jobvert])
        format.html { redirect_to(@jobvert, :notice => 'Jobvert was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jobvert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jobverts/1
  # DELETE /jobverts/1.xml
  def destroy
    @jobvert = Jobvert.find(params[:id])
    @jobvert.destroy

    respond_to do |format|
      format.html { redirect_to(jobverts_url) }
      format.xml  { head :ok }
    end
  end
end
