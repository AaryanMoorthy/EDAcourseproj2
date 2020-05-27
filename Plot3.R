b_emissions <- NEI %>%
  filter(fips == "24510") %>%
  group_by(year, type) %>%
  summarise(Emissions=sum(Emissions))

b_em_plot <- ggplot(data = b_emissions, aes(x = factor(year), y = Emissions, fill = type, colore = "black")) +
  geom_bar(stat = "identity") + facet_grid(. ~ type) + 
  xlab("Year") + ylab(expression('PM'[2.5]*' Emission')) +
  ggtitle("Baltimore Emissions by Source Type") 
print(b_em_plot)

