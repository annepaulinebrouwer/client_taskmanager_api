Welcome!
This is a client for a Task Manager API that I build.

You can access the API Client on http://taskmanager-api-client.herokuapp.com

The API Task Manager you can find here https://taskmanagerapi.herokuapp.com/api/v1/tasklists

The taskmanager Client has currently the following functions
  - show all tasklists
  - show a tasklist with tasks and the corresponding tags
  - create new tasklist
  - delete tasklist
  - create new tasks
  - delete tasks

Tasklists and tasks have a name and description. When creating a new tasklist or task you will need to pass a name and description.

The tags are highlighted in red, and have an hashtag (e.g. #today, #urgent)

The Task Manager API uses authentication and authorization policies. Only users that have logged in, and that are the owner of a task or tasklist can update or delete the object. However, due to time limitations the API Client doesnot have these features yet. Therefore I created the methods in the controllers in such a manner that a correct user-token is send with the GET/POST/PATCH/DELETE request to the API server to pass the authentication policy. This specific user also created tasklist 2,3,4,5, therefore it is authorized to delete these tasklist etc. (Note, you can not delete tasklist 1, because your not authorized). Next steps are improving this feature.

Next steps:
  - Improve authentication process
  - Create tags
  - Search on tags

******************************************************************************************
Have a look at http://taskmanager-api-client.herokuapp.com
******************************************************************************************

In case the server is not working, please download my code and run the app on local host by using the command 'rails s'. You can access than the app on localhost:3000
