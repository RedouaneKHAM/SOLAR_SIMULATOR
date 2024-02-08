import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["counter"];

  connect() {
    console.log("Stimulus controller connected!");
  }

  updateCounter(event) {
    const numberOfCharacters = event.currentTarget.value.length;
    if (numberOfCharacters > 0) {
      this.counterTarget.innerHTML = `${numberOfCharacters} characters`;
    } else {
      this.counterTarget.innerHTML = "";
    }
  }
}
