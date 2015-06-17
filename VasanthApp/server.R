library(shiny)
library(datasets)
wp <- data.frame(as.table(WorldPhones))
shinyServer(
  function(input, output, session) {
    x <- reactive({input$logPlot})
    y <- reactive({input$year})
    output$yearSel <- renderText({y()})
    output$table   <- renderTable({subset(wp, Var1==y())})
    output$plot    <- renderPlot({if (x())
      barplot(subset(wp, Var1==y())$Freq,
              names.arg = subset(wp, Var1==y())$Var2, log="y", 
              main=paste("The World's Phones in:",y(), "(in thousands, log-scale)"))
      else
        barplot(subset(wp, Var1==y())$Freq,
                names.arg = subset(wp, Var1==y())$Var2, 
                main=paste("The World's Phones in:",y(), "(in thousands)"))
    })
  }                                  
)