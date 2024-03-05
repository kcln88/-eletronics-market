import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="list-products"
export default class extends Controller {
  static values = {total: Number}
  static targets = ['textoAtual', 'opcao1', 'opcao2', 'opcao3', 'item', 'item2']

  connect() {
    this.textoAtualTarget.innerText = `Mostrar 8 produtos`;
    this.opcao1Target.innerText = `Mostrar ${this.totalValue <= 8 ? this.totalValue : 8} produtos`;
    this.opcao2Target.innerText = `Mostrar ${this.totalValue <= 16 ? this.totalValue : 16} produtos`;
    this.opcao3Target.innerText = `Mostrar todos os ${this.totalValue} produtos`;

    // Primeira secao de cards
    this.itemTargets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index > 3){
        element.classList.add("d-none")
      };
    });

    // Segunda secao de cards apos as propagandas
    this.item2Targets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index < 4 || element.dataset.index >= 8){
        element.classList.add("d-none")
      };
    });
  }

  render1(){
    this.textoAtualTarget.innerText = `Mostrar ${this.totalValue <= 8 ? this.totalValue : 8} produtos`;

    // Primeira secao de cards
    this.itemTargets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index > 3){
        element.classList.add("d-none")
      };
    });

    // Segunda secao de cards apos as propagandas
    this.item2Targets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index < 4 || element.dataset.index >= 8){
        element.classList.add("d-none")
      };
    });
  }

  render2(){
    this.textoAtualTarget.innerText = `Mostrar ${this.totalValue <= 16 ? this.totalValue : 16} produtos`;

    // Primeira secao de cards
    this.itemTargets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index > 7){
        element.classList.add("d-none")
      };
    });
    // Segunda secao de cards apos as propagandas
    this.item2Targets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index < 8 || element.dataset.index >= 16){
        element.classList.add("d-none")
      };
    });
  }

  render3(){
    this.textoAtualTarget.innerText = `Mostrar todos os ${this.totalValue} produtos`;

    // Primeira secao de cards
    this.itemTargets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index > 7){
        element.classList.add("d-none")
      };
    });
    // Segunda secao de cards apos as propagandas
    this.item2Targets.forEach(element => {
      element.classList.remove("d-none")
      if (element.dataset.index < 8){
        element.classList.add("d-none")
      };
    });

  }
}
