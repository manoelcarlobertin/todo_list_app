import { Controller } from "@hotwired/stimulus"

// Com Stimulus para marcar tarefas:
export default class extends Controller {
  static targets = ["checkbox"]

  toggle(event) {
    this.element.requestSubmit();
  }
}
