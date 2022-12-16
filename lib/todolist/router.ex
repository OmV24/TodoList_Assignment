defmodule Todolist.Router do

  require EEx
  import Plug.Conn
  import Tododb
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    body=EEx.eval_file "lib/templates/todohtml.html.eex" ,[dt: show_task(),di: show_id()]
    send_resp(conn, 200, body)
  end

  get "/todohtml" do
    conn = Plug.Conn.fetch_query_params(conn)
 		task = Map.fetch!(conn.params, "task")
		IO.puts("#{task}")
    add_task(task)
    body=EEx.eval_file "lib/templates/todohtml.html.eex" ,[dt: show_task(),di: show_id()]
    send_resp(conn, 200, body)
  end

  get "/delete" do
    conn = Plug.Conn.fetch_query_params(conn)
 		id = Map.fetch!(conn.params, "delete_data")
    IO.puts("#{id}")
    if length(len()) > 4 do
      delete_task(id)
    end
    body=EEx.eval_file "lib/templates/todohtml.html.eex",[dt: show_task(),di: show_id()]
    send_resp(conn, 200, body)
  end

  get "/update" do
      conn = Plug.Conn.fetch_query_params(conn)
      id = Map.fetch!(conn.params, "id")
      task = Map.fetch!(conn.params, "edit_data")
      update_task(id,task)
      body=EEx.eval_file "lib/templates/todohtml.html.eex",[dt: show_task(),di: show_id()]
      send_resp(conn, 200, body)
  end

  get "/edit" do
    conn = Plug.Conn.fetch_query_params(conn)
    id = Map.fetch!(conn.params, "id")
    # task = Map.fetch!(conn.params, "edit_data")
    # update_task(id,task)
    body=EEx.eval_file "lib/templates/update_task.html.eex",[dt: show_task(),di: show_id(),hi: id]
    send_resp(conn, 200, body)
  end

  match _ do
    send_resp(conn,404,"ERROR 404!!!")
  end
end
