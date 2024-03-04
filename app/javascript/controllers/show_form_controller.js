import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-form"
export default class extends Controller {
  static targets = ["input", "total"]
  static values = {price: Number}

  connect() {
  }

  calculateTotalPrice() {
    console.log(this.priceValue);
    console.log(this.inputTarget.value);
    this.totalTarget.innerText = parseInt(this.inputTarget.value) * this.priceValue / 100;
  }
}
