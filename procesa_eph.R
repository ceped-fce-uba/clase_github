

eph_3t2022 <-  eph::get_microdata(year = 2022,trimester = 3,type = "individual")

asalariados_varones <- eph_3t2022 %>%
  filter(ESTADO == 1, CAT_OCUP == 3, CH04 == 1)

asalariados_mujeres <- eph_3t2022 %>%
  filter(ESTADO == 1, CAT_OCUP == 3, CH04 == 2)

asalariados_totales <- eph_3t2022  %>%  # EPH
  filter(ESTADO == 1, CAT_OCUP == 3) %>% 
  summarise(asalariados = sum(PONDERA),
            asalariados_muestrales = n())


cantidad_filas <- nrow(eph_3t2022)

# NO SE QUE CARAJO AGREGAR

