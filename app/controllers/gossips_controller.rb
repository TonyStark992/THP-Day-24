class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new

  end

  def create
  @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 1) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save
      redirect_to welcome_path
    else
      render 'new'
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to welcome_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end

end
