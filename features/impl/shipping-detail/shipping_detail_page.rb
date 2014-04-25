
class ShippingPage < SitePrism::Page

  set_url "#{BASE_URL}/waybill.html"
  element :phone_tab, 'li[data-tab="phone-number"]'
  element :phone_tab_content, '.tab-content .phone-number-wrapper'
  element :bill_number_search_input, '.token-input'
  element :search_bill_number_detail_button, '.bill-number-wrapper .primary-button'
  element :search_details, '.delivery-wrapper'
  element :shipping_detail_page , '.shipping-detail-page'

  def change_phone_number_search_modal
    self.phone_tab.click
  end

  def get_phone_tab_content_style
    self.evaluate_script %Q| $(".tab-content .phone-number-wrapper").css('display'); |
  end

  def enter_bill_numbers numbers
    sleep 0.5
    self.bill_number_search_input.set numbers
    self.shipping_detail_page.click
  end

  def search_bill_number_detail
    self.search_bill_number_detail_button.click
  end

  def bill_number_details
    self.search_details.text
  end

end
