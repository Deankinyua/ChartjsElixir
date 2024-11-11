defmodule ChartjsWeb.PageLive.Index do
  use ChartjsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(:points, [1, 2, 3, 4, 15])}
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    TADA
    <div>
      <canvas id="my-chart" phx-hook="ChartJS" data-points={Jason.encode!(@points)}></canvas>

      <input type="text" name="user[phone_number]" id="user-phone-number" phx-hook="PhoneNumber" />
    </div>
    """
  end
end
