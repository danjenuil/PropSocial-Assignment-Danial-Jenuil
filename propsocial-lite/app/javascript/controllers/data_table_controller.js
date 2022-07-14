import { Controller } from "@hotwired/stimulus"
import { DataTable } from "simple-datatables"

export default class extends Controller {
  static targets = ['table'];

  connect() {
    if (this.hasTableTarget) {
      new DataTable(this.tableTarget)
    }
  }
}
