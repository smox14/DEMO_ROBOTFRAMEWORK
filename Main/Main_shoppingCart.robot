*** Setting ***
Library    Selenium2Library
#Test Setup     ลูกค้า Login เข้าสู่ระบบ

*** Variables ***
${BROWSER}    gc

*** Test Cases ***
ลูกค้าค้นหาสินค้า
  เปิดหน้าเว็บไซต์ lazada.co.th
  ค้นหาสินค้า    iphone6s
  ลูกค้าจะเห็นผลการค้าหา iphone6s
  กดเลือกสินค้า




*** Keywords ***
เปิดหน้าเว็บไซต์ lazada.co.th
  Open Browser    http://www.lazada.co.th/    browser=${BROWSER}


ค้นหาสินค้า
  [Arguments]    ${ชื่อสินค้า}
  Input Text     id = searchInput   ${ชื่อสินค้า}
  Click Button   id = searchSubmit

ลูกค้าจะเห็นผลการค้าหา iphone6s
  Title Should Be   iphone6s - ซื้อ iphone6s ในราคาถูกที่สุดใน Thailand | www.lazada.co.th

กดเลือกสินค้า
  Click Element    xpath = /html/body/div[3]/div[1]/div[2]/div/div[2]/div[1]

  # Click Element    id = f_buy
  # Mouse Over       id = cart

ชำระสินค้า
  Go To    https://order.tarad.com/cart/buy?language=thai&l-id=th_pc_top_header_nav_cart_checkout

ลูกค้า Login เข้าสู่ระบบ

  Click Element    id = flyout_watchlist
