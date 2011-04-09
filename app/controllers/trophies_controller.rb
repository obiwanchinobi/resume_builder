class TrophiesController < ApplicationController
  # GET /trophies
  # GET /trophies.xml
  def index
    @trophies = Trophy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trophies }
    end
  end

  # GET /trophies/1
  # GET /trophies/1.xml
  def show
    @trophy = Trophy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trophy }
    end
  end

  # GET /trophies/new
  # GET /trophies/new.xml
  def new
    @trophy = Trophy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trophy }
    end
  end

  # GET /trophies/1/edit
  def edit
    @trophy = Trophy.find(params[:id])
  end

  # POST /trophies
  # POST /trophies.xml
  def create
    @trophy = Trophy.new(params[:trophy])

    respond_to do |format|
      if @trophy.save
        format.html { redirect_to(@trophy, :notice => 'Trophy was successfully created.') }
        format.xml  { render :xml => @trophy, :status => :created, :location => @trophy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trophy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trophies/1
  # PUT /trophies/1.xml
  def update
    @trophy = Trophy.find(params[:id])

    respond_to do |format|
      if @trophy.update_attributes(params[:trophy])
        format.html { redirect_to(@trophy, :notice => 'Trophy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trophy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trophies/1
  # DELETE /trophies/1.xml
  def destroy
    @trophy = Trophy.find(params[:id])
    @trophy.destroy

    respond_to do |format|
      format.html { redirect_to(trophies_url) }
      format.xml  { head :ok }
    end
  end
end
