import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookmark"
export default class extends Controller {
  static targets = ["removefavourite", "addfavourite"]
  connect() {
  }

  add_to_favourite(){
    this.removefavouriteTarget.classList.toggle("d-none")
    this.addfavouriteTarget.classList.toggle("d-none")
  }
}
