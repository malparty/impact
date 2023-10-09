import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="visibility"
export default class extends Controller {
  static targets = ["hideable"];

  connect() {
    console.log("connected!!");
  }
  showTargets() {
    this.hideableTargets.forEach((element) => {
      element.hidden = false;
    });
  }

  hideTargets() {
    this.hideableTargets.forEach((element) => {
      element.hidden = true;
    });
  }
}
