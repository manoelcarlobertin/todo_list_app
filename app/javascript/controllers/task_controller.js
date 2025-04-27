import { Controller } from "@hotwired/stimulus"

// Com Stimulus para marcar tarefas:
export default class extends Controller {
  static targets = ["checkbox"]

  toggle(event) {
    const form = event.target.closest('form') ||
      document.getElementById(this.element.id.replace('item_', 'form_'))
      form.requestSubmit()
  }
}
