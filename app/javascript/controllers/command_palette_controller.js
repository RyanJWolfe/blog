import { Controller } from "@hotwired/stimulus"
import "ninja-keys"
import { lightTheme, darkTheme } from "../helpers/toggle_theme";

// Connects to data-controller="command-palette"
export default class extends Controller {
  static targets = ["ninja"]

  connect() {
    this.element.data = [
      {
        id: 'Posts',
        title: 'Open Posts',
        hotkey: 'ctrl+p',
        mdIcon: 'feed',
        section: 'Posts',
        handler: () => {
          Turbo.visit("/posts")
        }
      },
      {
        id: 'Home',
        title: 'Home',
        hotkey: 'ctrl+H',
        mdIcon: 'home',
        section: 'Pages',
        handler: () => {
          Turbo.visit("/")
        }
      },
      {
        id: 'About',
        title: 'About',
        hotkey: 'ctrl+A',
        mdIcon: 'face',
        section: 'Pages',
        handler: () => {
          Turbo.visit("/about")
        }
      },
      {
        id: 'Contact',
        title: 'Contact',
        hotkey: 'ctrl+C',
        mdIcon: 'send',
        section: 'Pages',
        handler: () => {
          Turbo.visit("/about")
        }
      },
      {
        id: 'Theme',
        title: 'Change theme...',
        mdIcon: 'desktop_windows',
        children: ['Light Mode', 'Dark Mode'],
        section: 'Settings',
        hotkey: 'ctrl+T',
        handler: () => {
          // open menu if closed. Because you can open directly that menu from it's hotkey
          this.ninjaTarget.open({ parent: 'Theme' });
          // if menu opened that prevent it from closing on select that action, no need if you don't have child actions
          return {keepOpen: true};
        },
      },
      {
        id: 'Dark Mode',
        title: 'Change theme to dark',
        mdIcon: 'dark_mode',
        hotkey: 'ctrl+1',
        parent: 'Theme',
        handler: () => {
          darkTheme()
        }
      },
      {
        id: 'Light Mode',
        title: 'Change theme to light',
        mdIcon: 'light_mode',
        hotkey: 'ctrl+2',
        parent: 'Theme',
        handler: () => {
          lightTheme()
        }
      },
    ]
  }
}
