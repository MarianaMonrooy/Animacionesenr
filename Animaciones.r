# Animacionesenr
#mariana alicia
#Borrar todas las variables existentes

rm(list=ls())

#Cargar libreria para graficar
library(ggplot2)
#Cargar libreria para dato
library(gapminder)

#asignar a la variablee datos la tabla de gapminder
datos<-gapminder
#Crear gráfico
grafico<-ggplot(
  datos,
  aes(x=gdpPercap, y=lifeExp, colour=continent)
) + geom_point(aes(size=pop), alpha=0.8) +
  theme_minimal()+
  theme(legend.position="bottom")+guides(size="none")+
  labs(x="PIB per Capita", y="Esperanza de vida", col="")

#Mostrar gráfico
grafico

#cargar librerias para animar la grafica
library(gganimate)
library(gifski)
grafico <- grafico +
  transition_time(year)
labs(title="Año:{frame_time}")

grafico