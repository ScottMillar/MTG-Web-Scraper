#Loading the rvest package
library('xml2')
library('rvest')
library('stringr')

#Specifying the url for desired website to be scraped
url <- 'https://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=460783'

#Reading the HTML code from the website
webpage <- read_html(url)

name_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_nameRow .value')
mana_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_manaRow .value')
cmc_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_cmcRow .value')
type_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_typeRow .value')
pt_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_textRow .cardtextbox')
set_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_currentSetSymbol')
rarity_data_html <- html_nodes(webpage, '#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_rarityRow .value')

name_data <- html_text(name_data_html)
mana_data <- html_text(mana_data_html)
cmc_data <- html_text(cmc_data_html)
type_data <- html_text(type_data_html)
pt_data <- html_text(pt_data_html)
set_data <- html_text(set_data_html)
rarity_data <- html_text(rarity_data_html)

show(name_data)
show(mana_data)
show(cmc_data)
show(type_data)
show(pt_data)
show(set_data)
show(rarity_data)

