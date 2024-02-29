import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-form"
export default class extends Controller {
  static targets = ["input", "total"]
  static values = {price: Number}

  connect() {
    // console.log(this.priceValue);
  }

  calculateTotalPrice() {
    this.totalTarget.innerText = parseInt(this.inputTarget.value) * this.priceValue;
  }

}
