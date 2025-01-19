# Undoing pre-existent split and saving raw data set

test<-read.csv("raw_data/testing_obsolete.csv")
train<-read.csv("raw_data/training_obsolete.csv")

raw_data<-rbind(test,train)

write.csv(raw_data, "raw_data/raw_data.csv")


# Defining our own split
library(tidyverse)
library(rsample) # for train-test split


df <- read_csv("raw_data/raw_data.csv")

glimpse(df)

# maybe train-test split at this point? Your choice
split_df <- initial_split(df)

# save pre-processed data in rds format for later use
write_rds(training(split_df), "processed_data/train.rds")
write_rds(testing(split_df),  "processed_data/test.rds")

