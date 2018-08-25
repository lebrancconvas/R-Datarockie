View(flights)
flights %>%
  filter(year == 2013 & month == 9) %>%
  group_by(carrier) %>%
  summarise(n = n()) %>%
  arrange(-n) %>%
  head(10)

flights %>%
  count(carrier)

copta <- flights %>%
  count(carrier, sort = T) %>%
  head(10)

write.csv(copta,'mutekiflight.csv')

flights %>%
  filter(month == 9) %>%
  count(carrier, sort = T) %>%
  head(10) %>%
  inner_join(airlines, by = 'carrier')

flights %>%
  select(carrier,year,month) %>%
  left_join(carrier)