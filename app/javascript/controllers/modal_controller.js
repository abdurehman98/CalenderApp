import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modals"
export default class extends Controller {
  connect(){
    console.log("hello from js ")
  }
  createtask(e){
    if (e.detail.success){
      this.hideModal()
    }
  }
  updatetask(e){
    if (e.detail.success){
      this.hideModal()
    }
  }

  hideModal(){
    this.element.remove()
  }

  }
