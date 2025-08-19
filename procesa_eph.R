library(eph)
library(tidyverse)

eph_3t2022 <-  eph::get_microdata(year = 2022,trimester = 3,type = "individual")

asalariados_totales <- eph_3t2022  %>%  # EPH
  filter(ESTADO == 1, CAT_OCUP == 3) %>% 
  summarise(asalariados = sum(PONDERA),
            asalariados_muestrales = n())
