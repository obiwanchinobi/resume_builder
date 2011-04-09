class PraisesController < ApplicationController
  # GET /praises
  # GET /praises.xml
  def index
    @praises = Praise.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @praises }
    end
  end

  # GET /praises/1
  # GET /praises/1.xml
  def show
    @praise = Praise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @praise }
    end
  end

  # GET /praises/new
  # GET /praises/new.xml
  def new
    @praise = Praise.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @praise }
    end
  end

  # GET /praises/1/edit
  def edit
    @praise = Praise.find(params[:id])
  end

  # POST /praises
  # POST /praises.xml
  def create
    @praise = Praise.new(params[:praise])

    respond_to do |format|
      if @praise.save
        format.html { redirect_to(@praise, :notice => 'Praise was successfully created.') }
        format.xml  { render :xml => @praise, :status => :created, :location => @praise }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @praise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /praises/1
  # PUT /praises/1.xml
  def update
    @praise = Praise.find(params[:id])

    respond_to do |format|
      if @praise.update_attributes(params[:praise])
        format.html { redirect_to(@praise, :notice => 'Praise was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @praise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /praises/1
  # DELETE /praises/1.xml
  def destroy
    @praise = Praise.find(params[:id])
    @praise.destroy

    respond_to do |format|
      format.html { redirect_to(praises_url) }
      format.xml  { head :ok }
    end
  end
end
