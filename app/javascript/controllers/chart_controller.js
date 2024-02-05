import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chart"
export default class extends Controller {

  static values = {
    chartdata1: String,
    chartdata2: String
  }
  connect() {

    new Chart(this.element, {
      type: 'line',
      data: {
        labels: ["1","2","3","4","5","6","7","8","9","10"],
        datasets: [{
          label: 'My First Dataset',
          data: JSON.parse(this.chartdata1Value),
          fill: false,
          borderColor: 'rgb(75, 192, 192)',
          tension: 0.1
        },
        {
          label: 'My Second Dataset',
          data: JSON.parse(this.chartdata2Value),
          fill: false,
          borderColor: 'rgb(0, 192, 0)',
          tension: 0.1
        }]
      }
    });
  }
}
