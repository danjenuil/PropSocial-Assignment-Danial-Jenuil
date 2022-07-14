import { Controller } from "@hotwired/stimulus"
import amortize from 'amortize'

export default class extends Controller {
  static targets = ['propertyPrice', 'downpayment', 'tenure', 'interestRate', 'marginOfFinance', 'monthlyRepayment']

  connect() {
    this.calculateMonthlyRepayment()
  }

  handleForm(event) {
    event.preventDefault()
    this.calculateMonthlyRepayment()
  }

  calculateMonthlyRepayment() {
    this.downpaymentTarget.value = (((100 - this.marginOfFinanceTarget.value) / 100) * this.propertyPriceTarget.value).toFixed(0)

    let result = amortize({
      amount: this.propertyPriceTarget.value - this.downpaymentTarget.value,
      rate: this.interestRateTarget.value,
      totalTerm: this.tenureTarget.value * 12,
      amortizeTerm: this.tenureTarget.value * 12
    })

    this.monthlyRepaymentTarget.value = result.payment.toFixed(0)
  }
}
