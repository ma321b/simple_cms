class SubjectsController < ApplicationController
  def index
  #  index is used to list all subjects
    @subjects = Subject.order('position ASC')  # all Subject records in db in ASC order by their position
  end

  def show
    # show is used to display detailed information about a single record shown by index
    @subject = Subject.find(params[:id]) # find the record with this id and store in instance variable @subject
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
