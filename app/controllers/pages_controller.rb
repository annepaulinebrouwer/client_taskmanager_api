class PagesController < ApplicationController


  def home
  end


  # string = '{"tasklist": { "name": "Work", "description": "All these tasks related to the my working life" } }'
  # hash = JSON.parse(string)
  # api.post({:data => hash})
  # puts hash
  # root = api.get
  # root.response_body

  # def new
  #   @tasklist = Tasklist.new
  # end

  # def create
  #   @tasklist = tasklist_params
  #   hash = JSON.parse(tasklist)
  #   api.post({:data => hash})
  # end

  # private

  # def tasklist_params
  #     params.require(:tasklist).permit(
  #       :name,
  #       :description,
  #     )
  # end
  # #
  # blendle_user = api.users.where(email: "blendle@gmail.com").first

  # JSON.parse(api.get.body.to_json).to_xml(:root => :my_root)

  # api.post do |tasklist|
  #   tasklist = Tasklist.new
  #   tasklist.content = params[:content]
  #   tasklist.created_at = Time.now
  #   tasklist.updated_at = Time.now
  #   if tasklist.save
  #     redirect '/', :notice => 'You just created a new tasklist'
  #   else
  #     redirect '/', :error => 'Something went wrong, please try again'
  #   end
  # end
end
