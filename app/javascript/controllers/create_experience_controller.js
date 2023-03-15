import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-experience"
export default class extends Controller {
  static targets = ["experience", "form", "insertform"]

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
          this.experienceTarget.insertAdjacentHTML("afterbegin", data.inserted_item)
        }

        this.insertformTarget.outerHTML = data.form
      })
  }
}
