shinyServer(function(input,output,session){

  output$leadershipScore<-renderChart({
    if(input$symb=="ola"||input$symb=="OLA")
    {
      i<-1
      for(person in olafounders)
      {
        #scores the education
        educationScore<-((person$education.level)/
                           (person$education.brand ))*(person$education.relevance ) #relevance, brand - keep from 0.1 to 1
        
        workScore<-0
        for(job in person$education.experience)
        {
          #scores the work experience
          workScore<- workScore + (((job['years']/job['brand'])/job['role'])*job['relevance'])
        }
        
        compositeScore<- educationScore + workScore;
        leaders[[i]]<-compositeScore
        i<-i+1
        
      }
    }
    else
    {
      i<-1
      for(person in uberfounders)
      {
        #scores the education
        educationScore<-((person$education.level)/
                           (person$education.brand ))*(person$education.relevance ) #relevance, brand - keep from 0.1 to 1
        
        workScore<-0
        for(job in person$education.experience)
        {
          #scores the work experience
          workScore<- workScore + (((job['years']/job['brand'])/job['role'])*job['relevance'])
        }
        
        compositeScore<- educationScore + workScore;
        leaders[[i]]<-compositeScore
        i<-i+1
      }
    }
    
    b <- rHighcharts:::Chart$new()
    b$title(text = "Leadership Score")
    b$subtitle(text = input$symb)
    b$data(x = leadershipkey, y =  leaders, type = "column", name = "Leadership Score",color="#100146")
    return(b)
    
  })
  
  output$piechart<-renderChart({
    if(input$symb=="ola"||input$symb=="OLA")
    {
      cvek <- c('Ola','Uber','Meru','Others')
      value = c(70,12,10,8)
    }
    else
    {
      cvek <- c('Uber','BlaBlaCar','Cabify','Easy Taxi','FlyWheel Software',
                'Gett','Hailo','LeCab','Lyft','Ola','TaxiCode','Zoomcar','Others')
      value = c(50,20,5,1,1,10,5,3,20,20,2,4,5)
    }
    
    b <- rHighcharts:::Chart$new()
    b$title(text = "Market Share with Competitors")
    b$subtitle(text = input$symb)
    b$data(x = cvek, y =  value, type = "pie", name = "Market Share with Competitors")
    return(b)
    
  })
  output$marketshare <- renderGvis({
    if(input$symb=="ola"||input$symb=="OLA")
    {
      geodata<-olageo
    }
    else
    {
      geodata<-ubergeo
    }
    
    gvisGeoChart(geodata, locationvar="Country", 
                 colorvar="Share",options=list(colors="['#cbb69d', '#603913', '#c69c6e']"))     
  })
  
  output$totalSentiment<-renderText({
    
    if(input$symb=="ola"||input$symb=="OLA")
    {
      (mean(meta(score(olanews))[[5]]))*1000
    }
    else
    {
      (mean(meta(score(ubernews))[[5]]))*1000
    }
  })
  
  output$value<-renderText({
    if(input$symb=="ola"||input$symb=="OLA")
    {
      "4,823,452,734"
    }
    else
    {
      "32,815,862,581"
    }
  })
  
  output$senti <- renderChart({
    if(input$symb=="OLA"||input$symb=="ola")
    {
      meta<-meta(score(olanews))
      key<-1:4
    }
    else
    {
      meta<-meta(score(ubernews))
      key<-1:10
    }
    
    # hist(meta[[6]],col="darkgoldenrod1",main="News Sentiment")
    b <- rHighcharts:::Chart$new()
    b$title(text = "Public Sentiment for the Startup")
    b$subtitle(text = input$symb)
    b$data(x = key, y =  meta[[5]], type = "column", name = "Sentiment Factor",color="#fed136")
    return(b)
    
  })
  output$sentimentgauge <- renderGvis({
    
    if(input$symb=="ola"||input$symb=="OLA")
    {
      popularity<-(mean(meta(score(olanews))[[5]]))*1000
    }
    else
    {
      popularity<-(mean(meta(score(ubernews))[[5]]))*1000
    }
    compPop<-data.frame(company= input$symb, popularity=popularity)
    
    gvisGauge(compPop, 
              options=list(min=0, max=100, greenFrom=66,
                           greenTo=100, yellowFrom=33, yellowTo=66,
                           redFrom=0, redTo=33, width=300, height=300))     
  })
  
  output$newsitem<-renderText({
    
    if(input$symb=="ola"||input$symb=="OLA")
    {
      num<-as.numeric(input$news)
      content(olanews[[num]])
    }
    else
    {
      num<-as.numeric(input$news)
      content(ubernews[[num]])
    }
  })
  
  output$financial<-renderChart({
    
    if(input$symb=="ola"||input$symb=="OLA")
    {
      xaxis= ola_1
      yaxis=ola_2
    }
    else
    {
      xaxis= uber_1
      yaxis=uber_2
    }
    fin <- rHighcharts:::Chart$new()
    fin$title(text = input$symb)
    fin$subtitle(text = "Previous rounds of investment")
    fin$data(x = xaxis, y =  yaxis, type = "line", name = "Amount invested(in million USD)",color="#100146")
    return(fin)
  })

  output$downloads<-renderText({
    if(input$symb=="ola"||input$symb=="OLA")
    {
      "10 million"
    }
    else
    {
      "100 million"
    }
    
  })
  
  output$ratings<-renderText({
    if(input$symb=="ola"||input$symb=="OLA")
    {
      4.1
    }
    else
    {
      4.3
    }
    
  })
})