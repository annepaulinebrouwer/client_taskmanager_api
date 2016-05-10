class TasksController < ApplicationController

  def create
    url = 'https://taskmanagerapi.herokuapp.com/api/v1/tasks'

    headers = {
      'X-User-Email' => ENV['TASKLIST_API_EMAIL'],
      'X-User-Token' => ENV['TASKLIST_API_TOKEN']
    }

    api_params = {
      task: {
        name: params[:name],
        description: params[:description],
        tasklist_id: params[:tasklist_id]
      }
    }

    RestClient.post url, api_params, headers

    flash[:notice] = "Task successfully created"
    redirect_to tasklists_path(params[:tasklist_id])
  end


  def destroy
    id = params[:id]
    url = "https://taskmanagerapi.herokuapp.com/api/v1/tasks/#{id}"

    headers = {
      'X-User-Email' => ENV['TASKLIST_API_EMAIL'],
      'X-User-Token' => ENV['TASKLIST_API_TOKEN']
    }

    RestClient.delete url, headers

    flash[:notice] = "Task successfully deleted"
    redirect_to tasklists_path(params[:tasklist_id])
  end
end
