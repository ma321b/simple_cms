class SubjectsController < ApplicationController
  def index
  #  index is used to list all subjects
  @subjects = Subject.order('position ASC')  # all Subject records in db in ASC order by their position
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

end
