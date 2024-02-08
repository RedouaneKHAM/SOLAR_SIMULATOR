import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chart"
export default class extends Controller {

  static values = {
    chartdata1: String,
    // chartdata2: String,
    chartdata3: String
  }
  connect() {

    new Chart(this.element, {
      type: 'line',
      data: {
        labels: ["2024","2025","2026","2027","2028","2029","2030","2031","2032","2033"],
        datasets: [{
          label: 'Annual electricity bill payment in Dhs',
          data: JSON.parse(this.chartdata1Value),
          fill: false,
          borderColor: 'rgb(255, 0, 0)',
          tension: 0.1
        },

        {
          label: 'Return On Investment in Dhs',
          data: JSON.parse(this.chartdata3Value),
          fill: false,
          borderColor: 'rgb(0, 0, 255)',
          tension: 0.1
        }]
      }
    });
  }
}
