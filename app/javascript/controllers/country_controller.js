import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="country"
export default class extends Controller {
  static outlets = ["city"];
  static values = {
    country: String,
  };

  connect() {
    const countryList = this.element;
    countryList.innerHTML = ["Sweden", "Denmark", "Finland", "Norway"]
      .map(
        (country) =>
          `<option value="${country.toLowerCase()}">${country}</option>`
      )
      .join("");
    countryList.value = this.countryValue;
  }

  onCountryChange(e) {
    const { value } = e.target;
    this.cityOutlet.reloadCityList(value);
  }
}
