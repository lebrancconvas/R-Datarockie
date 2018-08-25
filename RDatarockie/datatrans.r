#data transformation
df <- as.tbl(mtcars)
df
#select() use for selecting column
df %>% head()
head(df)
names(df)

df %>%
  select(mpg,hp,wt)
df %>%
  select(1,4,10)
df %>%
  select(starts_with("a"))
df %>%
  select(ends_with("p"))
df %>%
  select(contains("a"))
df %>%
  select(mpg,hp,wt)
df %>% 
  select(mpg,hp,wt) %>%
  filter(hp < 80)
df %>%
  select(mpg,hp,wt,am) %>%
  filter(hp < 100 & am == 0)
df %>%
  select(mpg,hp,wt,am) %>%
  filter(hp < 100 | am == 0)
df %>%
  select(mpg,hp,wt,am) %>%
  filter(hp < 100 | am == 0) %>%
  arrange(mpg)
df %>%
  select(mpg,hp,wt,am) %>%
  filter(hp < 100 | am == 0) %>%
  arrange(-mpg)
result <- df %>%
  select(mpg,hp,wt,am) %>%
  filter(hp < 100 | am == 0) %>%
  arrange(-mpg) %>%
  head(5)

write.csv(result,'wakuwaku.csv')
dir()
