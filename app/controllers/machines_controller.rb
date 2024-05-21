class MachinesController < ApplicationController
  def new
    @machine = Machine.new
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def create
    @machine = current_user.machines.build(machine_params)
    if @machine.save
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end

  def update
    @machine = Machine.find(params[:id])
    if @machine.update(machine_params)
      redirect_to user_path(current_user)
    else
      render "edit"
    end
  end
end

private

def machine_params
  params.require(:machine).permit(:machine_name, :machine_weight, :chassis_type, :motor_type, :machine_image, :user_id)
end
