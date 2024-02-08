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
      title: "We have recieved you order, we will contact you very soon",
      showConfirmButton: false,
      timer: 1500
    }).then(() => {
      window.location.href = "/"
    });
  }
}
