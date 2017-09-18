shinyUI(
  fluidPage(
    HTML(
      '<title>Robo Advisor</title>
      <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">
<nav class="navbar navbar-default navbar-fixed-top" style="color:white;background-color:#222;">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand page-scroll" href="#head">Robo-Venture Capitalist</a>
      </div>
      
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
      <ul class="nav navbar-nav navbar-right">
      <li class="hidden">
      <a href="#page-top"></a>
      </li>
      </li>
      <li>
      <a class="page-scroll" href="#leadership">Leadership</a>
      </li>
      <li>
      <a class="page-scroll" href="#market">Market</a>
      </li>
      <li>
      <a class="page-scroll" href="#sentiment">Sentiment</a>
      </li>
      <li>
      <a class="page-scroll" href="#product">Product</a>
      </li>
      <li>
      <a class="page-scroll" href="#financial">Financial</a>
      </li>
     
      <li>
      <a class="page-scroll" href="#about">About</a>
      </li>
      <li>
      <a class="page-scroll" href="#works">Info</a>
      
      
      </ul>
      </div>
      <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
      </nav>
<header id ="head">
        <div class="container">
          <div class= "row">
            
              <div class="intro-text">
                  <div class="intro-lead-in">Value Startups Like a Venture Capitalist</div>
                  <div class="intro-heading">Oculatus - A Robo Venture Capitalist</div><center>'),
      textInput("symb", "WHICH COMPANY SHOULD I VALUE", "OLA"), HTML('</center>
                  <a href="#trial" class="page-scroll btn btn-xl">AND THE VALUE IS...</a> <font size="20">
'), htmlOutput("value"),   HTML('</font>
              </div>
           
          </div>

        </div>
    </header>
    
      

    <section id="leadership" style="color:white;background-color:#222;" >
        <div class="container">
            <div class="row">
                <div class="col-lg-14 text-center">
                    <h2 class="section-heading">LEADERSHIP</h2>
                  
                </div>
            </div>'
      ),
    chartOutput('leadershipScore'),
    br(),
    HTML('</section>
         <script src="js/jquery.js"></script>
         <!-- Bootstrap Core JavaScript -->
         <script src="js/bootstrap.min.js"></script>
         <!-- Plugin JavaScript -->
         <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
         <script src="js/classie.js"></script>
         <script src="js/cbpAnimatedHeader.js"></script>
         <!-- Contact Form JavaScript -->
         <script src="js/jqBootstrapValidation.js"></script>
         <script src="js/contact_me.js"></script>
         <!-- Custom Theme JavaScript -->
         <script src="js/agency.js"></script>
         '),
    
   
    
    
  HTML('</div>
    </section>
<section id="market">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">MARKET</h2>
                    <center> <h4>Global Presence </h4>'), 
htmlOutput("marketshare"), br(),
chartOutput("piechart"),
HTML('</center>
                </div>
            </div>
               	
			')
  
  
  ,

HTML('</div>
    </section>

         <section id="sentiment"">
         <div class="container">
         <div class="row">
         <div class="col-lg-12 text-center">
         <h2 class="section-heading">SENTIMENT</h2>
         <center><h4>News Sentiment Meter'),
htmlOutput("totalSentiment"), HTML('</h4>'),
htmlOutput("sentimentgauge"),HTML('</center>'),br(),
chartOutput('senti'),
textInput("news", "News Item", "1"),
verbatimTextOutput("newsitem"),
HTML('
         </div>
         </div>'),
HTML('</div>
    </section>

<section id="product" style="color:white;background-color:#222;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">PRODUCT</h2>
                    <h3 class="section-subheading text-muted"></h3>
<div class="row"><div class="col-md-6"><font size="20"><b>'),  htmlOutput("downloads"),   HTML('</b></font><br>
<font size="4"><b>DOWNLOADS</b></font></div>
<div class="col-md-6"><font size="20"><b>'),  htmlOutput("ratings"),   HTML('</b></font><br>
<font size="4"><b>RATING ON THE APP STORE</b></font></div></div>
                </div>
            </div>
    </div>
    </section>
<section id="financial">
        <div class="container">
     <div class="row">
     <div class="col-lg-12 text-center">
     <h2 class="section-heading">FINANCIALS</h2>
     <h3 class="section-subheading text-muted"></h3>'), chartOutput('financial1'), HTML('
     </div>
     </div>
     <h3 class="section-subheading text-muted"></h3>'), chartOutput('financial'), HTML('
     </div>
     </div>
     </div>
     </section>
<section id="about">
        <div class="container">
     <div class="row">
     <div class="col-lg-12 text-center">
     <h2 class="section-heading">What do you get from Oculatus?</h2> <br/> <br/>
     <!--<h3 class="section-subheading text-muted">Oculatus has a unique financial model that calculates the value of a pre-revenue company/startup.<br>
     It values a startup based on several parameters belonging to the following categories:</h3>
     <p class="section-subheading text-muted"><h3>Leadership</h3></p>
     <p class="section-subheading text-muted"><h3>Product Innovation</h3></p>
     <p class="section-subheading text-muted"><h3>Market and Sector</h3></p>
     <p class="section-subheading text-muted"><h3>Financial Strength</h3></p>
     <p class="section-subheading text-muted"><h3>Branding/Social Media</h3></p>
     </div>
     </div>-->
     <div class="row">
     <div class="col-lg-12">
     <ul class="timeline">
     
     
     <li>
     <div class="timeline-image">
     <img class="img-circle img-responsive" src="img/images.001.jpg" alt="">
     </div>
     <div class="timeline-panel">
     <div class="timeline-heading">
     <h4 class="subheading">Best Advice</h4>
     </div>
     <div class="timeline-body">
     <p class="text-muted">Valuing a startup on more than 20 unique parameters</p>
     </div>
     </div>
     </li>
     
     
     <li class="timeline-inverted">
     <div class="timeline-image">
     <img class="img-circle img-responsive" src="img/sit_on_money.jpg" alt="">
     </div>
     <div class="timeline-panel">
     <div class="timeline-heading">
     <h4 class="subheading">Build Wealth</h4>
     </div>
     <div class="timeline-body">
     <p class="text-muted">Scientific and Statisticial methods help you make the right choices and decisions</p>
     </div>
     </div>
     </li>
     
     
     <li>
     <div class="timeline-image">
     <img class="img-circle img-responsive" src="img/timer.jpg" alt="">
     </div>
     <div class="timeline-panel">
     <div class="timeline-heading">
     <h4 class="subheading">Save Time</h4>
     </div>
     <div class="timeline-body">
     <p class="text-muted">We do all the HardWork for you to save your time.</p>
     </div>
     </div>
     </li>
     
     
     <li class="timeline-inverted">
     <div class="timeline-image">
     <img class="img-circle img-responsive" src="img/savemoney.jpg" alt="">
     </div>
     <div class="timeline-panel">
     <div class="timeline-heading"> 
     <h4 class="subheading">Save Money</h4>
     </div>
     <div class="timeline-body">
     <p class="text-muted">We charge very less fees compared to your VC.</p>
     </div>
     </div>
     </li>
     
     <li class="timeline-inverted">
     <div class="timeline-image">
     <img class="img-circle img-responsive" src="img/Trans.jpg" alt="">
     </div>
     <div class="timeline-panel">
     <div class="timeline-heading">
     <h4 class="subheading">Transparent</h4>
     </div>
     <div class="timeline-body">
     <p class="text-muted">We keep all information transparent and work in the best interest of our client.</p>
     </div>
     </div>
     </li>
     <li class="timeline-inverted">
     <div class="timeline-image">
     <img class="img-circle img-responsive" src="img/error.000.jpg" alt="">
     </div>
     <div class="timeline-panel">
     <div class="timeline-heading">
     
     <h4 class="subheading">Less Errors</h4>
     </div>
     <div class="timeline-body">
     <p class="text-muted">Automation translates to less errors</p>
     </div>
     </div>
     </li>
     <li class="timeline-inverted">
     <div class="timeline-image">
     <h4>Be Part
     <br>Of Our
     <br>Story!</h4>
     </div>
     </li>
     </ul>
     </div>
     </div>
     </div>
     </section>
<section id="works"  style="color:white;background-color:#222;">
      <div class="container">
     <div class="row">
     <div class="col-lg-12 text-center">
     <h2 class="section-heading">How Oculatus Works </h2>
     <br /><br /><br /><br /><br /><br /><br /><br />
     </div>
     </div>
     <div class="row">
     <div class="col-md-4 col-sm-6 portfolio-item">
     
     <!--    <div class="portfolio-hover">
     
     <div class="portfolio-hover-content">
     <i class="fa fa-plus fa-3x"></i>
     </div>
     </div> --!>
     <center><img src="img/insight.jpg" alt=""></center>
     
     <div class="portfolio-caption">
     <h3><center>Insights</center></h3>
     <h3 class="section-subheading text-muted"><center>One stop shop for all data used in valuing startup</center></h3>
     </div>
     </div>
     
     
     
     <div class="col-md-4 col-sm-6 portfolio-item">
     
     <center><img src="img/valuation.jpg"  alt=""></center>
     
     <div class="portfolio-caption">
     <h3><center>Valuation</center></h3>
     <h3 class="section-subheading text-muted"><center>Our complex algorithm will value startup in current condition</center></h3>
     </div>
     </div>
     <div class="col-md-4 col-sm-6 portfolio-item">
     
     
     <center><img src="img/return.jpg" class="img-responsive" alt=""></center>
     
     <div class="portfolio-caption">
     <h3><center>Opportunities</center></h3>
     <h3 class="section-subheading text-muted"><center>Get high returns by investing only in companies having high probability of Success</center></h3>
     
     </div>
     </div>
     <!--    <div class="col-md-4 col-sm-6 portfolio-item">
     <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
     <div class="portfolio-hover">
     <div class="portfolio-hover-content">
     <i class="fa fa-plus fa-3x"></i>
     </div>
     </div>
     <img src="img/portfolio/golden.png" class="img-responsive" alt="">
     </a>
     <div class="portfolio-caption">
     <h4>Golden</h4>
     <p class="text-muted">Website Design</p>
     </div>
     </div>
     <div class="col-md-4 col-sm-6 portfolio-item">
     <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
     <div class="portfolio-hover">
     <div class="portfolio-hover-content">
     <i class="fa fa-plus fa-3x"></i>
     </div>
     </div>
     <img src="img/portfolio/escape.png" class="img-responsive" alt="">
     </a>
     <div class="portfolio-caption">
     <h4>Escape</h4>
     <p class="text-muted">Website Design</p>
     </div>
     </div>
     <div class="col-md-4 col-sm-6 portfolio-item">
     <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
     <div class="portfolio-hover">
     <div class="portfolio-hover-content">
     <i class="fa fa-plus fa-3x"></i>
     </div>
     </div>
     <img src="img/portfolio/dreams.png" class="img-responsive" alt="">
     </a>
     <div class="portfolio-caption">
     <h4>Dreams</h4>
     <p class="text-muted">Website Design</p>
     </div>
     </div>-->
     </div>
     </div>
     </section>

<script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>
       ')
    )
)
