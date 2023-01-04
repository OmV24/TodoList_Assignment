defmodule Todolist.Router do

  require EEx
  import Plug.Conn
  import Tododb
  use Plug.Router

  plug :match                 # The :match plug is responsible for matching the incoming request to one of the defined routes in the Router.
  plug :dispatch              # The :dispatch plug is responsible for finally processing the request in the matched route.

  get "/" do
    body=EEx.eval_file "lib/templates/todohtml.html.leex"
    send_resp(conn, 200, body)
  end

  get "/todohtml" do
    conn = Plug.Conn.fetch_query_params(conn)
 		task = Map.fetch!(conn.params, "task")
		IO.puts("#{task}")
    add_task(task)
    body=EEx.eval_file "lib/templates/todohtml.html.leex"
    send_resp(conn, 200, body)
  end

  get "/delete" do
    conn = Plug.Conn.fetch_query_params(conn)
 		id = Map.fetch!(conn.params, "id")
    IO.puts("#{id}")
    delete_task(id)
    body=EEx.eval_file "lib/templates/todohtml.html.leex"
    send_resp(conn, 200, body)
  end

  get "/confirmation" do
    conn = Plug.Conn.fetch_query_params(conn)
    id = Map.fetch!(conn.params, "delete_id")
    task = to_string(Map.fetch!(conn.params, "delete_task"))
    body=EEx.eval_file "lib/templates/confirmation.html.leex",[task: task, id: id]
    send_resp(conn, 200, body)
  end

  get "/edit" do
    conn = Plug.Conn.fetch_query_params(conn)
    id = Map.fetch!(conn.params, "id")
    task = to_string(Map.fetch!(conn.params, "edit_data"))
    body=EEx.eval_file "lib/templates/update_task.html.leex",[id: id , edit_data: task]
    send_resp(conn, 200, body)
  end

  get "/update" do
      conn = Plug.Conn.fetch_query_params(conn)
      id = Map.fetch!(conn.params, "id")                           # get id which needs to updated.
      task = to_string(Map.fetch!(conn.params, "edit_data"))       # fetch new task.
      update_task(id,task)
      body=EEx.eval_file "lib/templates/todohtml.html.leex"
      send_resp(conn, 200, body)
  end

  match _ do
    send_resp(conn,404,"ERROR 404!!!")
  end
end
