rm(list= ls())

# Librerias:
install.packages("readxl")
install.packages("openxlsx")
install.packages("tidyverse")

library(readxl)
library(openxlsx)
library(tidyverse)


#---
# Data set:

# Data Bs As
CNA08_BsAs <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_buenosaires.xls", sheet = 7, skip = 3 )
CNA08_BsAs <- na.omit(CNA08_BsAs)

CNA08_BsAs_HyF <- CNA08_BsAs %>% 
   select("...1", "...3", "Hortalizas", "Frutales") %>% 
   filter(...1 == "Total (1)") %>% 
   rename( "TOTAL" = "...3",  "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( ...1 = case_when( ...1 == "Total (1)" ~ "Total",
                            TRUE ~ ...1 ),
          Provincia = "Buenos Aires"  )


# Data Catamarca:
CNA08_Catamarca <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_catamarca.xls", sheet = 7, skip = 3 )
CNA08_Catamarca <- na.omit(CNA08_Catamarca)

CNA08_Catamarca_HyF <- CNA08_Catamarca %>% 
   select("...1", Total, Hortalizas, Frutales) %>% 
   rename("TOTAL" = "Total","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Catamarca") %>% 
   filter(...1 == "Total")

# Data Chaco:
CNA08_Chaco <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_chaco.xls", sheet = 7, skip = 3 )
CNA08_Chaco <- na.omit(CNA08_Chaco)

CNA08_Chaco_HyF <- CNA08_Chaco %>% 
  select("...1", Total, "Hortalizas", "Frutales") %>% 
  rename("TOTAL" = "Total","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
  mutate( Provincia = "Chaco") %>% 
  filter(...1 == "Total")


# Data Chubut:
CNA08_Chubut <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_chubut.xls", sheet = 7, skip = 3 )
CNA08_Chubut <- na.omit(CNA08_Chubut )


CNA08_Chubut_HyF <- CNA08_Chubut %>% 
   select("...1", Total, "Hortalizas", "Frutales") %>% 
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Chubut") %>% 
   filter(...1 == "Total")

# Data Cordoba:
CNA08_Cordoba <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_cordoba.xls", sheet = 7, skip = 3 )
CNA08_Cordoba <- na.omit(CNA08_Cordoba)

CNA08_Cordoba_HyF <- CNA08_Cordoba %>% 
   select("...1", "...3", "Hortalizas", "Frutales") %>% 
   rename("TOTAL" = "...3", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>%
   mutate( Provincia = "Córdoba") %>% 
   filter(...1 == "Total")

# Data Corrientes:
CNA08_Corrientes <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_corrientes.xls", sheet = 7, skip = 3 )
CNA08_Corrientes <- na.omit(CNA08_Corrientes)

CNA08_Corrientes_HyF <- CNA08_Corrientes %>% 
   select("...1", Total, "Hortalizas", "Frutales") %>% 
   filter(...1 == "Total (1)")%>% 
   rename("TOTAL" = "Total","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( ...1 = case_when( ...1 == "Total (1)" ~ "Total",
                            TRUE ~ ...1 ),
           Provincia = "Corrientes" )

# Data Entre Rios:
CNA08_Entre_Rios <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_entrerios.xls", sheet = 7, skip = 3 )
CNA08_Entre_Rios <- na.omit(CNA08_Entre_Rios)


CNA08_Entre_Rios_HyF <- CNA08_Entre_Rios %>% 
  select("...1", "...3", "Hortalizas", "Frutales") %>% 
  rename("TOTAL" = "...3","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
  mutate( Provincia = "Entre Ríos") %>% 
  filter(...1 == "Total")

# Data Formosa:
CNA08_Formosa <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_formosa.xls", sheet = 7, skip = 3 )
CNA08_Formosa <- na.omit(CNA08_Formosa)

CNA08_Formosa_HyF <- CNA08_Formosa %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>% 
   rename("TOTAL" = "Total","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Formosa") %>% 
   filter(...1 == "Total")

# Data Jujuy:
CNA08_Jujuy <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_jujuy.xls", sheet = 7, skip = 3 )
CNA08_Jujuy <- na.omit(CNA08_Jujuy)

CNA08_Jujuy_HyF <- CNA08_Jujuy %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>% 
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Jujuy") %>% 
   filter(...1 == "Total")

# Data La Pampa:
CNA08_La_Pampa <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_lapampa.xls", sheet = 7, skip = 3 )
CNA08_La_Pampa <- na.omit(CNA08_La_Pampa)

CNA08_La_Pampa_HyF <- CNA08_La_Pampa %>% 
   select("...1", "...3", Hortalizas, "Frutales") %>% 
   rename("TOTAL" = "...3","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "La Pampa") %>% 
   filter(...1 == "Total")

 
# Data La Rioja:
CNA08_La_Rioja <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_larioja.xls", sheet = 7, skip = 3 )
CNA08_La_Rioja <- na.omit(CNA08_La_Rioja)

CNA08_La_Rioja_HyF <- CNA08_La_Rioja%>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>%
   mutate( Provincia = "La Rioja") %>% 
   filter(...1 == "Total")

# Data Mendoza:
CNA08_Mendoza <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_mendoza.xls", sheet = 7, skip = 3 )
CNA08_Mendoza <- na.omit(CNA08_Mendoza)

CNA08_Mendoza_HyF <- CNA08_Mendoza %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Mendoza") %>% 
   filter(...1 == "Total")


# Data Misiones:
CNA08_Misiones <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_misiones.xls", sheet = 7, skip = 3 )
CNA08_Misiones <- na.omit(CNA08_Misiones)


CNA08_Misiones_HyF <- CNA08_Misiones %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>%
   mutate( Provincia = "Misiones") %>% 
   filter(...1 == "Total")

# Data Neuquen:
CNA08_Neuquen <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_neuquen.xls", sheet = 7, skip = 3 )
CNA08_Neuquen <- na.omit(CNA08_Neuquen)

CNA08_Neuquen_HyF <- CNA08_Neuquen %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Neuquén") %>% 
   filter(...1 == "Total")

# Data Rio Negro:
CNA08_Rio_Negro <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_rionegro.xls", sheet = 7, skip = 3 )
CNA08_Rio_Negro <- na.omit(CNA08_Rio_Negro)


CNA08_Rio_Negro_HyF <- CNA08_Rio_Negro %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total","GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Río Negro") %>% 
   filter(...1 == "Total")

# Data Salta:
CNA08_Salta <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_salta.xls", sheet = 7, skip = 3 )
CNA08_Salta <- na.omit(CNA08_Salta )



CNA08_Salta_HyF <- CNA08_Salta %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Salta") %>% 
   filter(...1 == "Total")

# Data San Juan:
CNA08_San_Juan <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_sanjuan.xls", sheet = 7, skip = 3 )
CNA08_San_Juan <- na.omit(CNA08_San_Juan)


CNA08_San_Juan_HyF <- CNA08_San_Juan %>% 
   select("...1", "...3", Hortalizas, "Frutales") %>% 
   rename("TOTAL" = "...3", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>%
   mutate( Provincia = "San Juan") %>% 
   filter(...1 == "Total")

# Data San Luis:
CNA08_San_Luis <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_sanluis.xls", sheet = 7, skip = 3 )
CNA08_San_Luis <- na.omit(CNA08_San_Luis)

CNA08_San_Luis_HyF <- CNA08_San_Luis %>% 
  select("...1", "...3", "Hortalizas", "Frutales") %>%
  rename("TOTAL" = "...3", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
  mutate( Provincia = "San Luis") %>% 
  filter(...1 == "Total")


# Data Santa Cruz:
CNA08_Santa_Cruz <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_santacruz.xls", sheet = 7, skip = 3 )
CNA08_Santa_Cruz <- na.omit(CNA08_Santa_Cruz)

CNA08_Santa_Cruz_HyF <- CNA08_Santa_Cruz %>% 
  select("...1", "Total", "Hortalizas", "Frutales") %>%
  rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
  mutate( Provincia = "Santa Cruz") %>% 
  filter(...1 == "Total")

# Data Santa Fe:
CNA08_Santa_Fe <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_santafe.xls", sheet = 7, skip = 3 )
CNA08_Santa_Fe <- na.omit(CNA08_Santa_Fe)

CNA08_Santa_Fe_HyF <- CNA08_Santa_Fe %>% 
  select("...1", "...3", "Hortalizas", "Frutales") %>%
  rename("TOTAL" = "...3", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
  mutate( Provincia = "Santa Fe") %>% 
  filter(...1 == "Total")


# Data Santiago del Estero:
CNA08_Santiago_del_Estero <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_santiago_del_estero.xls", sheet = 7, skip = 3 )
CNA08_Santiago_del_Estero <- na.omit(CNA08_Santiago_del_Estero)

CNA08_Santiago_del_Estero_HyF <- CNA08_Santiago_del_Estero %>% 
   select("...1", "Total", "Hortalizas", "Frutales") %>%
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Santiago del Estero") %>% 
   filter(...1 == "Total")


# Data Tierra del Fuego:
CNA08_Tierra_del_Fuego <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_tierradelfuego.xls", sheet = 7, skip = 3 )
CNA08_Tierra_del_Fuego <- na.omit(CNA08_Tierra_del_Fuego)

 CNA08_Tierra_del_Fuego_HyF <- CNA08_Tierra_del_Fuego %>% 
  select("...1", "Total", "Hortalizas", "Frutales") %>% 
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
  mutate( Provincia = "Tierra del Fuego") %>% 
   filter(...1 == "Total")

# Data Tucuman:
CNA08_Tucuman <- read_excel("C:/Users/Dell/Documents/Mathi/cuadros_CNA2008 (1)/CNA08/cna08_tucuman.xls", sheet = 7, skip = 3 )
CNA08_Tucuman <- na.omit(CNA08_Tucuman )


CNA08_Tucuman_HyF <- CNA08_Tucuman %>% 
  select("...1", "Total", "Hortalizas", "Frutales") %>% 
   rename("TOTAL" = "Total", "GRUPO.HORTALIZAS.ha." = "Hortalizas", "GRUPO.FRUTALES.ha." = "Frutales" ) %>% 
   mutate( Provincia = "Tucumán") %>% 
   filter(...1 == "Total")


#---

## Juntamos todos los dataset:

CNA08_FyV <- bind_rows(
   CNA08_BsAs_HyF,
   CNA08_Catamarca_HyF,
   CNA08_Chaco_HyF,
   CNA08_Chubut_HyF,
   CNA08_Cordoba_HyF,
   CNA08_Corrientes_HyF,
   CNA08_Entre_Rios_HyF,
   CNA08_Formosa_HyF,
   CNA08_Jujuy_HyF,
   CNA08_La_Pampa_HyF,
   CNA08_La_Rioja_HyF,
   CNA08_Misiones_HyF,
   CNA08_Mendoza_HyF,
   CNA08_Neuquen_HyF,
   CNA08_Rio_Negro_HyF,
   CNA08_Salta_HyF,
   CNA08_San_Juan_HyF,
   CNA08_San_Luis_HyF,
   CNA08_Santa_Cruz_HyF,
   CNA08_Santa_Fe_HyF,
   CNA08_Santiago_del_Estero_HyF,
   CNA08_Tierra_del_Fuego_HyF,
   CNA08_Tucuman_HyF
 )

CNA08_FyV <- CNA08_FyV %>% 
  select(Provincia, TOTAL, GRUPO.HORTALIZAS.ha., GRUPO.FRUTALES.ha.) %>% 
   mutate(Año_Edicion = 2009)

CNA08_FyV$GRUPO.HORTALIZAS.ha. <- as.numeric(CNA08_FyV$GRUPO.HORTALIZAS.ha.)
CNA08_FyV$GRUPO.FRUTALES.ha. <- as.numeric(CNA08_FyV$GRUPO.FRUTALES.ha.) 
CNA08_FyV$TOTAL <- as.numeric(CNA08_FyV$TOTAL)

#---
# Agregamos el numero de habitantes por provinca para 2009

Poblacion_Prov_09 <- data.frame(
  Provincia = c("Buenos Aires", "CABA", "Tierra del Fuego", "Misiones", "Córdoba",
                "Catamarca", "Formosa", "Río Negro", "Jujuy", "Tucumán", "San Juan", "Corrientes",
                "Salta", "Chaco", "San Luis", "Neuquén", "La Rioja", "Mendoza", "Chubut",
                "Santa Fe", "Santiago del Estero", "Santa Cruz", "Entre Ríos", "La Pampa"),
  Num_habitantes = c(14917940, 3034161, 122531, 1061590, 3311280, 380612, 532238, 594189, 670766, 1457357, 685883,
                1002416, 1202753, 1042881, 428025, 538952, 334235, 1711416, 455607, 3220818, 856739, 221871, 1242547, 329576 ))


CNA08_FyV <- CNA08_FyV %>% 
  left_join(Poblacion_Prov_09, by = "Provincia")

# Agregamos tasas derivadas de las hectareas 

"Ha_Hort_x_habitantes", "Ha_Frut_x_habitantes", "Ha_Hort_x_10mil_habitantes", "Ha_Frut_x_10mil_habitantes", "Ha_Hort_x_TotalHa", "Ha_Frut_x_TotalHa", "Num_habitantes"

# Hectareas de frutas y hortalizas/ num de habitantes
CNA08_FyV <- CNA08_FyV %>% 
  mutate( "Ha_Hort_x_habitantes" = (GRUPO.HORTALIZAS.ha./Num_habitantes),
          "Ha_Frut_x_habitantes" = (GRUPO.FRUTALES.ha./Num_habitantes)
    )

# Hectareas de frutas y hortalizas/ 10 000 habitantes
CNA08_FyV <- CNA08_FyV %>% 
  mutate( "Ha_Hort_x_10mil_habitantes" = (GRUPO.HORTALIZAS.ha./Num_habitantes)*10000,
          "Ha_Frut_x_10mil_habitantes" = (GRUPO.FRUTALES.ha./Num_habitantes)*10000
  )

# Hectareas frutihorticolas/ hectareas total provincia

CNA08_FyV <- CNA08_FyV %>% 
  mutate( "Ha_Hort_x_TotalHa" = (GRUPO.HORTALIZAS.ha./TOTAL),
          "Ha_Frut_x_TotalHa" = (GRUPO.FRUTALES.ha./TOTAL) )


#---

# Reorganizamos el dataset para guardarlo y cerrarlo:

CNA08_FyV <- CNA08_FyV %>% 
  select( Año_Edicion, everything())


#---

write_csv(CNA08_FyV, "C:/Users/Dell/Documents/Mathi/CNA08_FyV/CNA08_FyV.csv")

