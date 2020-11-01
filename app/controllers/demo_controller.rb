class DemoController < ApplicationController

  layout false

  # redirect to redirect#redirect after 6 seconds
  def index
    @array = [1,2,3,4,5]  # instance variable, can use in template
  end

  def hello
    redirect_to(:controller => 'demo', :action => 'index') # pretty self explanatory
    # redirect_to(controller: 'demo', action: 'index') # synonymous to above
    # redirect_to(:action => 'index') # when we require same controller, no need to write it (only write action)
    # redirect_to('https://keats.kcl.ac.uk') # redirect to this url 
  end
end
