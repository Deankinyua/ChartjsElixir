defmodule ChartjsWeb.PageLive.Index do
  use ChartjsWeb, :live_view

  @impl true

  def render(assigns) do
    ~H"""
    TADA
    <div>
      <canvas id="my-chart" phx-hook="ChartJS" data-points={Jason.encode!(@points)}></canvas>

      <input
        type="text"
        name="user[phone_number]"
        id="user-phone-number"
        phx-hook="PhoneNumber"
        phx-mounted={JS.transition("animate-ping", time: 2000)}
      />
    </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(:points, [1, 2, 3, 4, 5])}
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end

  # * the following event is pushed from a phoenix hook
  # * ignore  it there are some things that have not been setup

  # def handle_event("load-blogs", _params, socket) do
  #   page_no = socket.assigns.page_no + 1
  #   new_blogs = page_no |> Blog.get_blogs()
  #   blogs = socket.assigns.blogs ++ new_blogs
  #   socket = assign(socket, blogs: blogs, page_no: page_no)
  #   {:noreply, socket}
  # end
end
