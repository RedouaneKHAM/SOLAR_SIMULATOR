import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"
// Connects to data-controller="order"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
  }
  showAlert(event) {
    event.preventDefault();
    Swal.fire({
      position: "top-end",
      icon: "success",
      title: "Your work has been saved",
      showConfirmButton: false,
      timer: 1500
    }).then(() => {
        window.location.href = "/"
    });
  }
}
