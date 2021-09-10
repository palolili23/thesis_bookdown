library("timevis")
library(tidyverse)

data <- data.frame(
  id = 1:12,
  content = c("Date of death or last date of contact", "Monthly data","n:7983","n:6315", "n:4797", "n:3550 ", "n:2147", "n:3011", "n:2468", "n:1893", "n:3932", "n:3122"),
  start = c("1989-07-0", "1991-01-01","1989-07-05","1993-09-06", "1997-03-19", "2002-01-10", "2008-12-12", "1999-02-26", "2002-01-16", "2008-12-16", "2006-02-13", "2010-09-29"),
  end = c("2014-12-31", "2014-12-31","1993-06-17", "1995-12-29", "1999-12-16", "2005-10-06", "2014-01-27", "2001-12-18", "2005-12-31", "2012-05-09", "2008-11-23", "2014-06-05"),
  group = c(rep("VR", 1), rep("PR", 1), rep("RSI", 5), rep("RSII", 3), rep("RSIII", 2))
)

data <- data %>% filter(group != "RSIII")

groups <- data.frame(
  id = c("VR", "PR", "RSI", "RSII"),
  content = c("Vitar Status", "Pharmacy registry", "RS-I", "RS-II")
)

timevis(data, showZoom = FALSE, zoomFactor =  0.5, groups = groups)

