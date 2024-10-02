defmodule ChartjsWeb.PageLive.Index do
  use ChartjsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
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
      <canvas id="my-chart" phx-hook="ChartJS"></canvas>
    </div>
    """
  end
end
