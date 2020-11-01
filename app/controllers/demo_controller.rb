class DemoController < ApplicationController

  layout false

  def index
  end

  def hello
    redirect_to(:controller => 'demo', :action => 'index') # pretty self explanatory
    # redirect_to(controller: 'demo', action: 'index') # synonymous to above
    # redirect_to(:action => 'index') # when we require same controller, no need to write it (only write action)
    # redirect_to('https://keats.kcl.ac.uk') # redirect to this url 
  end
end
