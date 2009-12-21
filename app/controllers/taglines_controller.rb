class TaglinesController < ApplicationController
  before_filter :login_required
  
  layout 'admin'
  
  # GET /taglines
  # GET /taglines.xml
  def index
    @taglines = Tagline.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @taglines }
    end
  end

  # GET /taglines/1
  # GET /taglines/1.xml
  def show
    @tagline = Tagline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tagline }
    end
  end

  # GET /taglines/new
  # GET /taglines/new.xml
  def new
    @tagline = Tagline.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tagline }
    end
  end

  # GET /taglines/1/edit
  def edit
    @tagline = Tagline.find(params[:id])
  end

  # POST /taglines
  # POST /taglines.xml
  def create
    @tagline = Tagline.new(params[:tagline])

    respond_to do |format|
      if @tagline.save
        flash[:notice] = 'Tagline was successfully created.'
        format.html { redirect_to(@tagline) }
        format.xml  { render :xml => @tagline, :status => :created, :location => @tagline }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tagline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /taglines/1
  # PUT /taglines/1.xml
  def update
    @tagline = Tagline.find(params[:id])

    respond_to do |format|
      if @tagline.update_attributes(params[:tagline])
        flash[:notice] = 'Tagline was successfully updated.'
        format.html { redirect_to(@tagline) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tagline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /taglines/1
  # DELETE /taglines/1.xml
  def destroy
    @tagline = Tagline.find(params[:id])
    @tagline.destroy

    respond_to do |format|
      format.html { redirect_to(taglines_url) }
      format.xml  { head :ok }
    end
  end
end
