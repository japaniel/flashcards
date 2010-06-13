class CardsController < ApplicationController
  before_filter :load_collection
  
  def load_collection
    @collection = Collection.find(params[:collection_id])
  end
  
  # GET /cards
  # GET /cards.xml
  def index
    @cards = @collection.cards.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cards }
    end
  end

  # GET /cards/1
  # GET /cards/1.xml
  def show
    @card = @collection.cards.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @card }
    end
  end

  # GET /cards/new
  # GET /cards/new.xml
  def new
    @card = @collection.cards.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @card }
    end
  end

  # GET /cards/1/edit
  def edit
    @card = @collection.cards.find(params[:id])
  end

  # POST /cards
  # POST /cards.xml
  def create
    @card = @collection.cards.build(params[:card])

    respond_to do |format|
      if @card.save
        format.html { redirect_to(@collection, :notice => 'Card was successfully created.') }
        format.xml  { render :xml => @card, :status => :created, :location => @card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cards/1
  # PUT /cards/1.xml
  def update
    @card = @collection.cards.find(params[:id])

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to(@collection, :notice => 'Card was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.xml
  def destroy
    @card = @collection.cards.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to(collection_url) }
      format.xml  { head :ok }
    end
  end
end
