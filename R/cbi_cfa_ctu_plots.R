# load libraries
library(ggplot2)
library(ggpubr)

# location of data
setwd("/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R")
dir <- "/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R"
list.files(dir)

#data for scatter plot
cbi_final_table <- read.table("cbi_final_table.txt")
cfa_final_table <- read.table("cfa_final_table.txt")
ctu_final_table <- read.table("ctu_final_table.txt")

cbi_final_table=data.frame(chromosome=cbi_final_table$V1,median_l=cbi_final_table$V2,median_i=cbi_final_table$V3,category=cbi_final_table$V4)
cbi_final_table <- cbi_final_table[2:26,]
cfa_final_table=data.frame(chromosome=cfa_final_table$V1,median_l=cfa_final_table$V2,median_i=cfa_final_table$V3,category=cfa_final_table$V4)
cfa_final_table <- cfa_final_table[2:26,]
ctu_final_table=data.frame(chromosome=ctu_final_table$V1,median_l=ctu_final_table$V2,median_i=ctu_final_table$V3,category=ctu_final_table$V4)
ctu_final_table <- ctu_final_table[2:26,]

cbi_final_table$chromosome <- as.numeric(cbi_final_table$chromosome)
cbi_final_table$median_l <- as.numeric(cbi_final_table$median_l)
cbi_final_table$median_i <- as.numeric(cbi_final_table$median_i)
cfa_final_table$chromosome <- as.numeric(cfa_final_table$chromosome)
cfa_final_table$median_l <- as.numeric(cfa_final_table$median_l)
cfa_final_table$median_i <- as.numeric(cfa_final_table$median_i)
ctu_final_table$chromosome <- as.numeric(ctu_final_table$chromosome)
ctu_final_table$median_l <- as.numeric(ctu_final_table$median_l)
ctu_final_table$median_i <- as.numeric(ctu_final_table$median_i)

# definition of vectors for multiple scatter plot
median_l <- c(cbi_final_table$median_l,cfa_final_table$median_l,ctu_final_table$median_l)
median_i <- c(cbi_final_table$median_i,cfa_final_table$median_i,ctu_final_table$median_i)
species <- c(rep("Cobitis_bilseli", 25), rep("Cobitis_fahireae", 25), rep("Cobitis_turcica", 25))
final_table_scatter_plot_data_frame=data.frame(median_l=median_l, median_i=median_i, species=species)

# generation of multiple scatter plot
cbi_scatterplot <- ggplot(final_table_scatter_plot_data_frame, aes(x=median_i, y=median_l))+
  geom_point(aes(col=species))+
  labs(y="chromosome length (%)", x="centromeric index")+
  geom_vline(xintercept = c(0, 12.5, 25, 37.5, 50), linetype="dashed")+
  scale_colour_brewer(palette = "Dark2")  # change color palette
cbi_scatterplot

# definition of vectors for multiple box plot of l value
cbi_l_box_plot_data_frame <- read.table("cbi_l_percentage_box_plot_data_frame.tsv")
cfa_l_box_plot_data_frame <- read.table("cfa_l_percentage_box_plot_data_frame.tsv")
ctu_l_box_plot_data_frame <- read.table("ctu_l_percentage_box_plot_data_frame.tsv")

cbi_l_box_plot_data_frame <- data.frame(l_box_plot=cbi_l_box_plot_data_frame$V1, chromosomes_box_plot=cbi_l_box_plot_data_frame$V2)
cfa_l_box_plot_data_frame <- data.frame(l_box_plot=cfa_l_box_plot_data_frame$V1, chromosomes_box_plot=cfa_l_box_plot_data_frame$V2)
ctu_l_box_plot_data_frame <- data.frame(l_box_plot=ctu_l_box_plot_data_frame$V1, chromosomes_box_plot=ctu_l_box_plot_data_frame$V2)

cbi_l_box_plot_data_frame$species <- rep("Cobitis bilseli", times=500) 
cfa_l_box_plot_data_frame$species <- rep("Cobitis fahireae", times=450)
ctu_l_box_plot_data_frame$species <- rep("Cobitis turcica", times=350)


# generation of box plot
cbi_l_boxplot <- ggplot(cbi_l_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=l_box_plot)) + geom_boxplot()+
  labs(y="l (%)", x="chromosome")+
  ylim(1, 3.5)+
  expand_limits(y = c(1, 3.5))+
  facet_grid(cols = vars(species))+
  theme(strip.text = element_text(face = "italic"))+
  geom_vline(xintercept = c(4.5, 9.5, 10.5, 11.5), linetype="dashed")
cbi_l_boxplot

cfa_l_boxplot <- ggplot(cfa_l_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=l_box_plot)) + geom_boxplot()+
  labs(y="l (%)", x="chromosome")+
  ylim(1, 3.5)+
  expand_limits(y = c(1, 3.5))+
  facet_grid(cols = vars(species))+
  theme(strip.text = element_text(face = "italic"))+
  geom_vline(xintercept = c(11.5, 18.5), linetype="dashed")
cfa_l_boxplot

ctu_l_boxplot <- ggplot(ctu_l_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=l_box_plot)) + geom_boxplot()+
  labs(y="l (%)", x="chromosome")+
  ylim(1, 3.5)+
  expand_limits(y = c(1, 3.5))+
  facet_grid(cols = vars(species))+
  theme(strip.text = element_text(face = "italic"))+
  geom_vline(xintercept = c(4.5, 8.5), linetype="dashed")
ctu_l_boxplot

ggarrange(cbi_l_boxplot, cfa_l_boxplot, ctu_l_boxplot, #+ rremove("x.text"), 
          labels = c("a", "b", "c"),
          nrow = 3)

# definition of vectors for multiple box plot of i value
cbi_i_box_plot_data_frame <- read.table("cbi_i_box_plot_data_frame.tsv")
cfa_i_box_plot_data_frame <- read.table("cfa_i_box_plot_data_frame.tsv")
ctu_i_box_plot_data_frame <- read.table("ctu_i_box_plot_data_frame.tsv")

cbi_i_box_plot_data_frame <- data.frame(i_box_plot=cbi_i_box_plot_data_frame$V1, chromosomes_box_plot=cbi_i_box_plot_data_frame$V2)
cfa_i_box_plot_data_frame <- data.frame(i_box_plot=cfa_i_box_plot_data_frame$V1, chromosomes_box_plot=cfa_i_box_plot_data_frame$V2)
ctu_i_box_plot_data_frame <- data.frame(i_box_plot=ctu_i_box_plot_data_frame$V1, chromosomes_box_plot=ctu_i_box_plot_data_frame$V2)

cbi_i_box_plot_data_frame$species <- rep("Cobitis bilseli", times=500) 
cfa_i_box_plot_data_frame$species <- rep("Cobitis fahireae", times=450)
ctu_i_box_plot_data_frame$species <- rep("Cobitis turcica", times=350)

# generation of box plot
cbi_i_boxplot <- ggplot(cbi_i_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=i_box_plot)) + geom_boxplot()+
  labs(y="i", x="chromosome")+
  facet_grid(cols = vars(species))+
  theme(strip.text = element_text(face = "italic"))+
  geom_vline(xintercept = c(4.5, 9.5, 10.5, 11.5), linetype="dashed")
cbi_i_boxplot

cfa_i_boxplot <- ggplot(cfa_i_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=i_box_plot)) + geom_boxplot()+
  labs(y="i", x="chromosome")+
  facet_grid(cols = vars(species))+
  theme(strip.text = element_text(face = "italic"))+
  geom_vline(xintercept = c(11.5, 18.5), linetype="dashed")
cfa_i_boxplot

ctu_i_boxplot <- ggplot(ctu_i_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=i_box_plot)) + geom_boxplot()+
  labs(y="i", x="chromosome")+
  facet_grid(cols = vars(species))+
  theme(strip.text = element_text(face = "italic"))+
  geom_vline(xintercept = c(4.5, 8.5), linetype="dashed")
ctu_i_boxplot

ggarrange(cbi_i_boxplot, cfa_i_boxplot, ctu_i_boxplot, #+ rremove("x.text"), 
          labels = c("a", "b", "c"),
          nrow = 3)
