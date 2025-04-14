# Module 12

rm(list = ls()) 

links <- read.csv("C:/Users/Jason Derulo/Desktop/USF/USF/Spring 2025/LIS 4317/Module 12/Data files/Dataset2-Media-User-Example-EDGES.csv", header=T, as.is=T)
nodes <- read.csv("C:/Users/Jason Derulo/Desktop/USF/USF/Spring 2025/LIS 4317/Module 12/Data files/Dataset2-Media-User-Example-NODES.csv", header=T, as.is=T)

head(nodes)
head(links)

library("network")
library("visNetwork")
library("sna")
library("threejs")
library("ndtv")

library("igraph")
library("png")
library("ggraph")
library("networkD3")
library("animation")
library("maps")
library("geosphere")

test_pal <- rainbow(5, alpha=.5)
c_pal <- colorRampPalette(c("dodgerblue","lightblue","skyblue"))

links <- as.matrix(links)
dim(links)
dim(nodes)

net <- graph_from_incidence_matrix(links)
table(V(net)$type)

plot(net,vertex.label=NA)

class(net)
net

plot(net, edge.arrow.size=.4, edge.curved=.1)

plot(net, edge.arrow.size=100, edge.curved = 0.1, edge.color="darkgreen",
     vertex.color="dodgerblue", vertex.frame.color="#ffffff",
     vertex.label=V(net)$media, vertex.label.color="grey") 

deg <- degree(net, mode="all")
V(net)$size <- deg*3

E(net)$arrow.size <- .2
E(net)$edge.color <- "gray80"

graph_attr(net, "layout") <- layout_with_gem
plot(net) 

plot(net, edge.color="orange", vertex.color="gray50") 

plot(net) 
legend(x="bottomleft", c("Newspaper","Television", "Online News"), pch=21,
       col="#777777", pt.bg=colrs, pt.cex=2, cex=.8, bty="n", ncol=1)

par(mar=c(0.5,0.5,0.5,0.5))
plot(net, vertex.shape="none", vertex.label=V(net)$media, 
     vertex.label.font=2, vertex.label.color="gray40",
     vertex.label.cex=.7, edge.color="gray85")

net.bg <- sample_pa(100) 
V(net.bg)$size <- 8
V(net.bg)$frame.color <- "white"
V(net.bg)$color <- "dodgerblue"
V(net.bg)$label <- "" 
E(net.bg)$arrow.mode <- 0
plot(net.bg)

circle <- layout_in_circle(net.bg)
plot(net.bg, layout=circle)

random <- layout_randomly(net.bg)
plot(net.bg, layout=random)

fr <- layout_with_fr(net.bg)
plot(net.bg, layout=fr)
