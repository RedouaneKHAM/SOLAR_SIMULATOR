import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="order"
export default class extends Controller {
  connect() {
  }
  showAlert() {
    // Prevent default link behavior
    // event.preventDefault();

    // Show the alert message
    alert("We will contact you soon");
  }
}
