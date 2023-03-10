defmodule EctoprintWeb.ControlLive do
  use EctoprintWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.h1>
      <span class="text-transparent bg-clip-text bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500">
        Fancy Control
      </span>
    </.h1>
    <.container class="mt-5" max_width="full">
      <.dropdown label="Dropdown" js_lib="live_view_js">
        <.dropdown_menu_item>
          <HeroiconsV1.Outline.home class="w-5 h-5 text-gray-500" /> Button item with icon
        </.dropdown_menu_item>
        <.dropdown_menu_item link_type="button" label="button item" class="block" />
        <.dropdown_menu_item link_type="a" to="/" label="Link" />
        <.dropdown_menu_item link_type="a" to="/" label="Link with method" method={:put} />
        <.dropdown_menu_item link_type="live_patch" to="/" label="Live Patch" />
        <.dropdown_menu_item link_type="live_redirect" to="/" label="Live Redirect" />
        <.dropdown_menu_item phx-click="some_phoenix_click_event" label="Phoenix click event" />
      </.dropdown>
      <.dropdown label="Dropdown" js_lib="live_view_js">
        <.dropdown_menu_item>
          <HeroiconsV1.Outline.home class="w-5 h-5 text-gray-500" /> Button item with icon
        </.dropdown_menu_item>
        <.dropdown_menu_item link_type="button" label="button item" />
        <.dropdown_menu_item link_type="a" to="/" label="Link" />
        <.dropdown_menu_item link_type="a" to="/" label="Link with method" method={:put} />
        <.dropdown_menu_item link_type="live_patch" to="/" label="Live Patch" />
        <.dropdown_menu_item link_type="live_redirect" to="/" label="Live Redirect" />
        <.dropdown_menu_item phx-click="some_phoenix_click_event" label="Phoenix click event" />
      </.dropdown>
    </.container>
    """
  end
end
