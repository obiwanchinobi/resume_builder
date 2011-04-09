class CoverLettersController < ApplicationController
  # GET /cover_letters
  # GET /cover_letters.xml
  def index
    @cover_letters = CoverLetter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cover_letters }
    end
  end

  # GET /cover_letters/1
  # GET /cover_letters/1.xml
  def show
    @cover_letter = CoverLetter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cover_letter }
    end
  end

  # GET /cover_letters/new
  # GET /cover_letters/new.xml
  def new
    @cover_letter = CoverLetter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cover_letter }
    end
  end

  # GET /cover_letters/1/edit
  def edit
    @cover_letter = CoverLetter.find(params[:id])
  end

  # POST /cover_letters
  # POST /cover_letters.xml
  def create
    @cover_letter = CoverLetter.new(params[:cover_letter])

    respond_to do |format|
      if @cover_letter.save
        format.html { redirect_to(@cover_letter, :notice => 'Cover letter was successfully created.') }
        format.xml  { render :xml => @cover_letter, :status => :created, :location => @cover_letter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cover_letter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cover_letters/1
  # PUT /cover_letters/1.xml
  def update
    @cover_letter = CoverLetter.find(params[:id])

    respond_to do |format|
      if @cover_letter.update_attributes(params[:cover_letter])
        format.html { redirect_to(@cover_letter, :notice => 'Cover letter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cover_letter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cover_letters/1
  # DELETE /cover_letters/1.xml
  def destroy
    @cover_letter = CoverLetter.find(params[:id])
    @cover_letter.destroy

    respond_to do |format|
      format.html { redirect_to(cover_letters_url) }
      format.xml  { head :ok }
    end
  end
end
