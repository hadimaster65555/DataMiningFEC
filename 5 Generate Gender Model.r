require(gender)
unique_first_names <- as.vector(names.df$first_names)
gender.model <- gender(unique_first_names)
gender.data <- data.frame(gender.model$name, gender.model$gender, stringsAsFactors=FALSE)
colnames(gender.data) <- c("first_name", "gender")
head(gender.data)
write.csv(gender.data, "C:/my_folders/Gender Model.csv", row.names=FALSE, quote=TRUE)