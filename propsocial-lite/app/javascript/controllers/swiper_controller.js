import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper'

export default class extends Controller {
  static targets = ['swiper']

  connect() {
    if (this.hasSwiperTarget) {
      console.log('hello swiper')
      var swiper = new Swiper(".mySwiper", {
        pagination: {
          el: ".swiper-pagination",
          type: "fraction",
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    }
  }
}
