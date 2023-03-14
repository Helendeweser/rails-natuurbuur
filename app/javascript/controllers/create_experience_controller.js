import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-experience"
export default class extends Controller {
  static targets = ["experience", "form"]

  connect(){
  }

  send(event) {
    event.preventDefault()

    const options =  {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    }

    fetch(this.formTarget.action, options)

      .then(response => response.json())
      .then((data) => {

        if (data.inserted_item) {
          this.experienceTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })
  }
}
