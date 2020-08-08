#require "watir"
#browser = Watir::Browser.new
#browser.goto "https://namutek.com/"

require "rubygems"
require 'watir-webdriver'
$Client = "Clientes"
$Select_Client = "ASEMBIS"
  browser = Watir::Browser.new :chrome #ff,chrome or safarimie
  browser.goto "http://coinca-sc20.cloudapp.net/"
  #browser.button(:class,"btn btn-primary").click
  #sleep 5
  browser.text_field(:id, "DecryptedEmail").set("ldruiz@coinca.tv")
  browser.text_field(:id, "Password").set("QANamu12345!")
  browser.checkbox(:id, "RememberMe").set
  #browser.button(:id,"").click
  browser.button(:class,"btn btn-primary").click
  sleep 5
  browser.span(:id => 'select2-chosen-2').click
  sleep 5
  browser.text_field(:id => 's2id_autogen2_search').set("#{$Client}")
  sleep 5
  browser.text_field(:id => 's2id_autogen2_search').send_keys :enter
  sleep 10
  browser.span(:id => 'select2-chosen-1').click
  browser.text_field(:id => 's2id_autogen1_search').set("#{$Select_Client}")
  browser.text_field(:id => 's2id_autogen1_search').send_keys :enter
  sleep 5
  browser.button(:id,"btnCustomer").click
  sleep 10
sleep 10 
