import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="list-products"
export default class extends Controller {
  connect() {
    console.log('conectado');
  }

  
}
