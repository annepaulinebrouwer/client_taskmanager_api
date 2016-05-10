class TasklistsController < ApplicationController

  def index
    api = HyperResource.new(root: 'https://taskmanagerapi.herokuapp.com/api/v1/tasklists',
        headers: {'Accept' => 'application/vnd.taskmanagerapi.herokuapp.com.v1+json'})
    root = api.get
    @tasklists = root.tasklists
  end

  def show
    id = params[:id]
    url = "https://taskmanagerapi.herokuapp.com/api/v1/tasklists/#{id}"

    headers = {
      'X-User-Email' => ENV['TASKLIST_API_EMAIL'],
      'X-User-Token' => ENV['TASKLIST_API_TOKEN']
    }

    response  = RestClient.get url, headers
    @tasklist = JSON.parse(response)["tasklist"]
    @tasks = @tasklist["tasks"]
  end

  def create
    url = 'https://taskmanagerapi.herokuapp.com/api/v1/tasklists'

    headers = {
      'X-User-Email' => ENV['TASKLIST_API_EMAIL'],
      'X-User-Token' => ENV['TASKLIST_API_TOKEN']
    }

    api_params = {
      tasklist: {
        name: params[:name],
        description: params[:description]
      }
    }

    RestClient.post url, api_params, headers

    flash[:notice] = "Tasklist successfully created"
    redirect_to tasklists_path
  end

  def destroy
    id = params[:id]
    url = "https://taskmanagerapi.herokuapp.com/api/v1/tasklists/#{id}"

    headers = {
      'X-User-Email' => ENV['TASKLIST_API_EMAIL'],
      'X-User-Token' => ENV['TASKLIST_API_TOKEN']
    }

    RestClient.delete url, headers

    flash[:notice] = "Tasklist successfully deleted"
    redirect_to tasklists_path
  end
end
