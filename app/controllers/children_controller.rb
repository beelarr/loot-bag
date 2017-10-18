class ChildrenController < ApplicationController
  def index
    @children = Child.all
    json_response(@children)
  end
  def create
    @child = Child.create(params.permit(:name, :delivered))
  end
  def show
    @child = Child.find(params[:id])
    json_response(@child)
  end
  def update
    @child = Child.find(params[:id])
    @child.update(params.permit(:name, :delivered))
  end
  def destroy
    @child = Child.find(params[:id])
    @child.destroy
  end
end
