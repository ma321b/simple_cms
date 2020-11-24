class SubjectsController < ApplicationController
  def index
  #  index is used to list all subjects
    @subjects = Subject.order('position ASC') # all Subject records in db in ASC order by their position
  end

  def show
    # show is used to display detailed information about a single record shown by index
    @subject = Subject.find(params[:id]) # find the record with this id and store in instance variable @subject
  end

  def new
    # NEW is used to display a new form to put data in to be saved to the db in Subject table
    @subject = Subject.new # the new subject that we will be creating from the form data
  end

  def create
    # CREATE operation -> handle form processing to add the new record to db
    @subject = Subject.new(subject_params) # instantiate new subject to be added
    if @subject.save
      # if record saved successfully, redirect to index
      redirect_to(subjects_path)
    else
      # otherwise render the form again to correct mistakes in it
      # good thing is previous values will be saved
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
  def subject_params
    # this will sanitise the params, allowing only name, visible and position
    # values to be passed in from params for mass assignment
    return params.require(:subject).permit(:name, :visible, :position)
  end

end
