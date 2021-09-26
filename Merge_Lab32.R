# Hecho con gusto por Luz Yolanda Rivera Álvarez(UAEH)

# LABORATORIO - Merge entre dos bases de datos

# Objetivo: unir dos bases de datos
# --------------------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 



#############################################
#LABORATORIO:    #
#############################################
#Prerrequisitos

#llamar de la librería data.table
library(data.table)

#seleccionamos los archivos que vamos a combinar, para tener las rutas
file.choose()

#nombrar mis archivos para generar tablas

green.products<- read.csv("/Users/luz/Documents/GitHub/Temas selectos3/LYRA_LAB32merge/green products.csv")
all.products<- read.csv("/Users/luz/Documents/GitHub/Temas selectos3/LYRA_LAB32merge/COMPLETE_YEARS_PRODUCTS.csv")


#hacer que Rstudio lea nuestras bases de datos como tablas de datos
green.products<- as.data.table(green.products )
all.products<- as.data.table(all.products)

#Hacemos la union de las dos tablas, pero sólo nos va a combinar aquellas que comparten en mismo código

merge.allproducts = merge(all.products, green.products, by= "product_code")

#Ahora le pido la union de todas las bases de datos y que me indique aquellos datos faltantes con N/A

merge.full= merge(all.products,green.products, by= "product_code", all.x = TRUE)

#Generamos el archivo para su descarga

write.csv(merge.full,file="merge.full.csv")







