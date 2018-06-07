class StepsController < ApplicationController
  def set_current
    step = Step.find(params[:step_id])
    step.update(completed: "is-current")
  end
end
