## Data scraping from Livinginsider project. 
install.packages("tidyverse")
install.packages("ggmap")

## load library
library(tidyverse)
library(rvest) 
library(httr)
library(magrittr)
library(ggmap)
library(jsonlite)
library(stringr)
library(dplyr)

## API connect
register_google(key = "..........") # your Google API key


## Create data frame from detail of each item

## Start value
page <- 1111
last_page <- 1
item_detail <- data.frame()

while (is.na(last_page) == F) {
  
  ## find listing page
  page_url <- paste0("https://www.livinginsider.com/searchword_en/Condo/Buysell/",page,"/property-listing-condo-for-sale.html")
  listing_page <- read_html(page_url)
  
  ## find listing item
  listing_links <- listing_page %>%
    html_nodes("div.item-desc a") %>%
    html_attr("href")
  
  ## find item detail
  
  for (list_link in listing_links[1:2]) {
    sale_head <- list_link %>%
      read_html() %>%
      html_node("h1.font-Sarabun") %>%
      html_text2
    
    price <- list_link %>%
      read_html() %>%
      html_node("span.price-detail") %>%
      html_text2
    
    price_sqm <- list_link %>%
      read_html() %>%
      html_node("small") %>%
      html_text2

    created <- list_link %>%
      read_html() %>%
      html_node("span.lv-small-font") %>%
      html_text2

    floor_size <- list_link %>%
      read_html() %>%
      html_nodes("span.detail-property-list-text") %>%
      extract2(1) %>%
      html_text2()

    level_condo <- list_link %>%
      read_html() %>%
      html_nodes("span.detail-property-list-text") %>%
      extract2(2) %>%
      html_text2()

    num_bed <- list_link %>%
      read_html() %>%
      html_nodes("span.detail-property-list-text") %>%
      extract2(3) %>%
      html_text2()

    num_bath <- list_link %>%
      read_html() %>%
      html_nodes("span.detail-property-list-text") %>%
      extract2(3) %>%
      html_text2()

    condo_name <- list_link %>%
      read_html() %>%
      html_node("div.detail-text-project a") %>%
      html_text2()

    zone <- list_link %>%
      read_html() %>%
      html_node("div.detail-text-zone a") %>%
      html_text2()

    near_lo_type1 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("data-map") %>%
      extract2(1)

    near_lo_name1 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("title") %>%
      extract2(1)

    near_lo_dist1 <- list_link %>%
      read_html() %>%
      html_nodes("a.box-map-l p") %>%
      extract2(1) %>%
      html_text2()

    near_lo_type2 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("data-map") %>%
      extract2(2)

    near_lo_name2 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("title") %>%
      extract2(2)

    near_lo_dist2 <- list_link %>%
      read_html() %>%
      html_nodes("a.box-map-l p") %>%
      extract2(2) %>%
      html_text2()

    near_lo_type3 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("data-map") %>%
      extract2(3)

    near_lo_name3 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("title") %>%
      extract2(3)

    near_lo_dist3 <- list_link %>%
      read_html() %>%
      html_nodes("a.box-map-l p") %>%
      extract2(3) %>%
      html_text2()

    near_lo_type4 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("data-map") %>%
      extract2(4)

    near_lo_name4 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("title") %>%
      extract2(4)

    near_lo_dist4 <- list_link %>%
      read_html() %>%
      html_nodes("a.box-map-l p") %>%
      extract2(4) %>%
      html_text2()

    near_lo_type5 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("data-map") %>%
      extract2(5)

    near_lo_name5 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("title") %>%
      extract2(5)

    near_lo_dist5 <- list_link %>%
      read_html() %>%
      html_nodes("a.box-map-l p") %>%
      extract2(5) %>%
      html_text2()

    near_lo_type6 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("data-map") %>%
      extract2(6)

    near_lo_name6 <- list_link %>%
      read_html() %>%
      html_nodes("li.box-link-map") %>%
      html_attr("title") %>%
      extract2(6)

    near_lo_dist6 <- list_link %>%
      read_html() %>%
      html_nodes("a.box-map-l p") %>%
      extract2(6) %>%
      html_text2()

    owner <- list_link %>%
      read_html() %>%
      html_node("label") %>%
      html_text2()

    longitude <- geocode(location = condo_name ,
                        output = "latlon",
                        source = "google")$lon[1]

    latitude <- geocode(location = condo_name ,
                       output = "latlon",
                       source = "google")$lat[1]
    
    ## correct item detail each page to temp directory   
    temp <- data.frame( sale_head,
                        price,
                        price_sqm,
                        created,
                        floor_size,
                        level_condo,
                        num_bed,
                        num_bath,
                        condo_name,
                        zone,
                        near_lo_type1,
                        near_lo_name1,
                        near_lo_dist1,
                        near_lo_type2,
                        near_lo_name2,
                        near_lo_dist2,
                        near_lo_type3,
                        near_lo_name3,
                        near_lo_dist3,
                        near_lo_type4,
                        near_lo_name4,
                        near_lo_dist4,
                        near_lo_type5,
                        near_lo_name5,
                        near_lo_dist5,
                        near_lo_type6,
                        near_lo_name6,
                        near_lo_dist6,
                        owner,
                        longitude,
                        latitude,
                        list_link
                      )
    
    ## combine each item detail
    item_detail <- bind_rows(item_detail, temp)
    print("Process....")
    
    }
  
  
  ## next page
  page <- page + 1
}

