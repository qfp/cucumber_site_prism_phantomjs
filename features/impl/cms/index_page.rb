class IndexPage < SitePrism::Page

  set_url "#{BASE_URL}/index.html"

  def active_cms_button
    simulate_click_on %Q| $("span.org-opencms-gwt-client-ui-css-I_CmsImageBundle-I_CmsImageStyle-opencmsSymbol") .parent().parent() |
  end

  def click_banner_edit_button
    simulate_click_on %Q| $("#banner div[title=Edit]") |
  end

  def replace_banner_image
    simulate_click_on %Q| $("div[title='Open image gallery']") |
    sleep 1
    simulate_click_on %Q| $("div[title='Show gallery']") |
  end

  private
  def simulate_click_on(dom)
    evaluate_script %Q| #{dom}.trigger("mouseover").trigger("mousedown").trigger("mouseup"); |
  end
end
