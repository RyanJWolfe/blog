import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbarBg", "navbar"]

  connect() {
    this.handleScrollPosition()

    // Called when the user scrolls the page
    window.onscroll = (e) => {
      this.handleScrollPosition()
    }
  }

  handleScrollPosition() {
    // If the user is scrolled 100px or more from the top of the page show the navbar bg
    if (this.scrollTop > 25) {
      this.showNavbarBg()
    } else {
      this.hideNavbarBg()
    }
  }

  hideNavbarBg() {
    this.navbarTarget.classList.remove('transition-shadow', 'delay-200')
    this.navbarBgTarget.style.top = '-100px'
    this.navbarTarget.classList.remove("shadow-lg")
  }

  showNavbarBg() {
    this.navbarTarget.classList.add('transition-shadow', 'delay-200')
    this.navbarBgTarget.style.top = '0'
    this.navbarTarget.classList.add("shadow-lg")
  }

  get scrollTop() {
    return window.scrollY || document.documentElement.scrollTop;
  }
}
