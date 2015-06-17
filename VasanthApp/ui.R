library(shiny)
shinyUI(navbarPage("DDP-Shiny:",
                   tabPanel("Application",
                            headerPanel("Developing Data Products. Shiny Project"),
                            sidebarPanel(
                              selectInput("year", "Year:", list("1951"="1951", "1956"="1956", "1957"="1957", "1958"="1958",
                                                                "1959"="1959", "1960"="1960", "1961"="1961")),
                              checkboxInput("logPlot", "log-scale", FALSE)
                            ),
                            mainPanel(
                              plotOutput("plot"),
                              tableOutput("table")
                            )
                   ),
                   tabPanel("Documentation",
                            p("A. DEVELOPING-DATA-PRODUCTS, June 2015"),
                            p("Vasanth"),
                            p("B. APPLICATION-USAGE:"),
                            p("Simply select the year of interest to see the applicable data, in graphical and tabular form."),
                            p("Note that the y-axis of the barplot will become logarithmic if the 'log-scale' checkbox is selected."),
                            p("C. DATA-DESCRIPTION:"),
                            p("The World's Telephones ('WorldPhones' from the datasets library)"),
                            p("Description: The number of telephones in various regions of the world (in thousands)."),
                            p("Format: A matrix with 7 rows and 8 columns. The columns of the matrix give the figures for a given region, and the rows the figures for a year."),
                            p("The regions are: North America, Europe, Asia, South America, Oceania, Africa, Central America."),
                            p("The years are: 1951, 1956, 1957, 1958, 1959, 1960, 1961."),
                            p("Source: AT&T (1961) The World's Telephones."),
                            p("References: McNeil, D. R. (1977) Interactive Data Analysis. New York: Wiley. ")
                   )
))