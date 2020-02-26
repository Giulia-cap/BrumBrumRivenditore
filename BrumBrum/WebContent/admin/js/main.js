var  myChart1;

var aliment=document.getElementsByClassName("alimentazione");
var mar=document.getElementsByClassName("marca");

///inizializzo il grafico a torta///
var BenFiat=0, DieFiat=0;

for(var i = 0; i < mar.length; i++){
if(mar[i].innerHTML=="fiat" && aliment[i].innerHTML=='diesel')
	DieFiat+=1;
else if(mar[i].innerHTML=="fiat" && aliment[i].innerHTML=='benzina')
	BenFiat+=1;
}



///////////////////////////////////
function creaDiagrammaTorta(){

var ctx_live = document.getElementById("torta");
ctx_live.height = 209;
myChart1 = new Chart(ctx_live, {
 type: 'doughnut',
 data: {
   datasets: [
     {
       label: "My First dataset",
       data: [DieFiat,BenFiat],
       backgroundColor: [
         '#00b5e9',
         '#fa4251'
       ],
       hoverBackgroundColor: [
         '#00b5e9',
         '#fa4251'
       ],
       borderWidth: [
         0, 0
       ],
       hoverBorderColor: [
         'transparent',
         'transparent'
       ]
     }
   ],
   labels: [
     'Diesel',
     'Benzina'
   ]
 },
 
 options: {
   maintainAspectRatio: false,
   responsive: true,
   cutoutPercentage: 87,
   animation: {
     animateScale: true,
     animateRotate: true
   },
   legend: {
     display: false,
     position: 'bottom',
     labels: {
       fontSize: 14,
       fontFamily: "Poppins,sans-serif"
     }

   },
   tooltips: {
     titleFontFamily: "Poppins",
     xPadding: 15,
     yPadding: 10,
     caretPadding: 0,
     bodyFontSize: 16,
   }
 }
});
}

creaDiagrammaTorta();

function cambiaDiagrammaTorta(){

	var listaAlimentazione=document.getElementsByClassName("alimentazione");
	var listaMarca=document.getElementsByClassName("marca");
	var BFiat=0, BMercedes=0, BNissan=0, BVolk=0, BRenault=0;
	var DFiat=0, DMercedes=0, DNissan=0, DVolk=0, DRenault=0;

	
for(var i = 0; i < listaMarca.length; i++){
	if(listaMarca[i].innerHTML=="fiat" && listaAlimentazione[i].innerHTML=='benzina')
		BFiat+=1;
	else if(listaMarca[i].innerHTML=="mercedes" && listaAlimentazione[i].innerHTML=='benzina')
		BMercedes+=1;
	else if(listaMarca[i].innerHTML=="nissan" && listaAlimentazione[i].innerHTML=='benzina')
		BNissan+=1;
	else if(listaMarca[i].innerHTML=="volkswagen" && listaAlimentazione[i].innerHTML=='benzina')
		BVolk+=1;
	else if(listaMarca[i].innerHTML=="renault" && listaAlimentazione[i].innerHTML=='benzina')
		BRenault+=1;
	else if(listaMarca[i].innerHTML=="fiat" && listaAlimentazione[i].innerHTML=='diesel')
		DFiat+=1;
	else if(listaMarca[i].innerHTML=="mercedes" && listaAlimentazione[i].innerHTML=='diesel')
		DMercedes+=1;
	else if(listaMarca[i].innerHTML=="nissan" && listaAlimentazione[i].innerHTML=='diesel')
		DNissan+=1;
	else if(listaMarca[i].innerHTML=="volkswagen" && listaAlimentazione[i].innerHTML=='diesel')
		DVolk+=1;
	else if(listaMarca[i].innerHTML=="renault" && listaAlimentazione[i].innerHTML=='diesel')
		DRenault+=1;
}


        $.ajax({
            url: 'StoricoOrdiniRivenditore.jsp',
            success: function(data,myChart) {
            	console.log("entro");
      	    	var selezionata=[0,0];
      	    	
      	    	if(document.getElementById("chartType1").value=="Fiat"){
      	    		console.log("ho selezionato benzina");
      	    		selezionata=[DFiat,BFiat];
      	    	}
      	    	else  if(document.getElementById("chartType1").value=="Mercedes"){
      	    		console.log("ho selezionato Mercedes");
      	    		selezionata=[DMercedes,BMercedes];
      	    	}else  if(document.getElementById("chartType1").value=="Nissan"){
      	    		console.log("ho selezionato nissan");
      	    		selezionata=[DNissan,BNissan];
      	    	}else  if(document.getElementById("chartType1").value=="Volkswagen"){
      	    		console.log("ho selezionato volk");
      	    		selezionata=[DVolk,BVolk];
      	    	}else  if(document.getElementById("chartType1").value=="Renault"){
      	    		console.log("ho selezionato renault");
      	    		selezionata=[DRenault,BRenault];
      	    	}
      	    	
      	    	
      	     if(selezionata[0]!=0 || selezionata[1]!=0){
      	   	
      	   	creaDiagrammaTorta();
      	     myChart1.data.datasets[0].data.pop();
      	     myChart1.data.datasets[0].data.pop();
      	     myChart1.data.datasets[0].data.push(selezionata[0]);
      	     myChart1.data.datasets[0].data.push(selezionata[1]);
      	     myChart1.update();
      	     }
      	     
      	     
      	     else{
      	    	if(myChart1!=null)
      	    		myChart1.destroy(); 
      	    }}
        });
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////


 var ctx = document.getElementById("canvas");
 
function graficoMese(){
	
	 try {

		    // Recent Report 3
		    const bd_brandProduct3 = 'rgba(0,181,233,0.9)';
		    const bd_brandService3 = 'rgba(0,173,95,0.9)';
		    const brandProduct3 = 'transparent';
		    const brandService3 = 'transparent';
		    
		    
		    var listaPrezzoAuto=document.getElementsByClassName("prezzoAuto");
		    var listaData=document.getElementsByClassName("data");
		    
		    var gen=0,feb=0,mar=0,ap=0,mag=0,giu=0,lug=0,ago=0,set=0,ott=0,nov=0,dic=0;
		    
		    for(var i = 0; i < listaData.length; i++)
		    	{
		    		if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==1)
		    			gen+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==2)
		    			feb+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==3)
		    			mar+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==4)
		    			ap+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==5)
		    			mag+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==6)
		    			giu+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==7)
		    			lug+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==8)
		    			ago+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==9)
		    			set+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==1 &&listaData[i].innerHTML.charAt(6)==0)
		    			ott+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==1 &&listaData[i].innerHTML.charAt(6)==1)
		    			nov+=parseInt(listaPrezzoAuto[i].innerHTML);
		    		else if(listaData[i].innerHTML.charAt(5)==1 &&listaData[i].innerHTML.charAt(6)==2)
		    			dic+=parseInt(listaPrezzoAuto[i].innerHTML);
		    	}
		    
		    
		    var spese = [gen, feb, mar, ap, mag, giu, lug, ago, set, ott, nov, dic];
		    var mesi= ['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio', 'Agosto','Settebre','Ottobre','Novembre','Dicembre'];
		    
		    
		      ctx.height = 430;
		       myChart = new Chart(ctx, {
		        type: 'line',
		        data: {
		          labels: mesi,
		          datasets: [
		            {
		              label: 'My First dataset',
		              backgroundColor: brandService3,
		              borderColor: bd_brandService3,
		              pointHoverBackgroundColor: '#fff',
		              borderWidth: 0,
		              data: spese,
		              pointBackgroundColor: bd_brandService3
		            }
		          ]
		        },
		        options: {
		          maintainAspectRatio: false,
		          legend: {
		            display: false
		          },
		          responsive: true,
		          scales: {
		            xAxes: [{
		              gridLines: {
		                drawOnChartArea: true,
		                color: '#f2f2f2'
		              },
		              ticks: {
		                fontFamily: "Poppins",
		                fontSize: 12
		              }
		            }],
		            yAxes: [{
		              ticks: {
		                beginAtZero: true,
		                maxTicksLimit: 5,
		                stepSize: 20000,
		                max: 300000,
		                fontFamily: "Poppins",
		                fontSize: 12
		              },
		              gridLines: {
		                display: false,
		                color: '#f2f2f2'
		              }
		            }]
		          },
		          elements: {
		            point: {
		              radius: 3,
		              hoverRadius: 4,
		              hoverBorderWidth: 3,
		              backgroundColor: '#333'
		            }
		          }


		        }
		      });
		    

		  } catch (error) {
		    console.log(error);
		  }
	
}


(function($) {
  // USE STRICT
  "use strict";
  graficoMese();

  try {
	  
	  
	  var listaAlimentazione=document.getElementsByClassName("alimentazione");
	  var contBenzina=0, contDiesel=0;
	  
	    for(var i = 0; i < listaAlimentazione.length; i++)
	    	{
		  if(listaAlimentazione[i].innerHTML=='benzina')
			  contBenzina++;
		  else
			  contDiesel++;
	  }
	    
	    
	    
/*    // Percent Chart 2
    var ctx = document.getElementById("torta");
    if (ctx) {
      ctx.height = 209;
      var myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [
            {
              label: "My First dataset",
              data: [contDiesel, contBenzina],
              backgroundColor: [
                '#00b5e9',
                '#fa4251'
              ],
              hoverBackgroundColor: [
                '#00b5e9',
                '#fa4251'
              ],
              borderWidth: [
                0, 0
              ],
              hoverBorderColor: [
                'transparent',
                'transparent'
              ]
            }
          ],
          labels: [
            'Diesel',
            'Benzina'
          ]
        },
        options: {
          maintainAspectRatio: false,
          responsive: true,
          cutoutPercentage: 87,
          animation: {
            animateScale: true,
            animateRotate: true
          },
          legend: {
            display: false,
            position: 'bottom',
            labels: {
              fontSize: 14,
              fontFamily: "Poppins,sans-serif"
            }

          },
          tooltips: {
            titleFontFamily: "Poppins",
            xPadding: 15,
            yPadding: 10,
            caretPadding: 0,
            bodyFontSize: 16,
          }
        }
      });
    }*/

  } catch (error) {
    console.log(error);
  }
  ///////////////////////////////////////////
})(jQuery);


var myChart;
function prova()
{

	
	if(myChart!=null)
		myChart.destroy(); 
	
	var ctx = document.getElementById("canvas");

	
	
	try {

	    // Recent Report 3
	    const bd_brandProduct3 = 'rgba(0,181,233,0.9)';
	    const bd_brandService3 = 'rgba(0,173,95,0.9)';
	    const brandProduct3 = 'transparent';
	    const brandService3 = 'transparent';
	    
	    var pippo=document.getElementById("pip");
	    
	    var listaPrezzoAuto=document.getElementsByClassName("prezzoAuto");
	    var listaData=document.getElementsByClassName("data");
	    
	    var annoPos0=0,annoPos1=0,annoPos2=0,annoPos3=0,annoPos4=0,annoPos5=0;
	      
	    var data = new Date();
	    var anno = data.getFullYear();
	    var anni = [(anno-2).toString(), (anno-1).toString(), (anno).toString(), (anno+1).toString(), (anno+2).toString(), (anno+3).toString()];
	    for(var i = 0; i < listaData.length; i++)
		{
			var annoDaConfrontare=listaData[i].innerHTML.charAt(0)+listaData[i].innerHTML.charAt(1)+listaData[i].innerHTML.charAt(2)+listaData[i].innerHTML.charAt(3);
				  if(anni[0]===annoDaConfrontare )
					  annoPos0+=parseInt(listaPrezzoAuto[i].innerHTML);
				  if(anni[1]===annoDaConfrontare )
					  annoPos1+=parseInt(listaPrezzoAuto[i].innerHTML);
				  if(anni[2]===annoDaConfrontare )
					  annoPos2+=parseInt(listaPrezzoAuto[i].innerHTML);
				  if(anni[3]===annoDaConfrontare )
					  annoPos3+=parseInt(listaPrezzoAuto[i].innerHTML);
				  if(anni[4]===annoDaConfrontare )
					  annoPos4+=parseInt(listaPrezzoAuto[i].innerHTML);
				  if(anni[5]===annoDaConfrontare )
					  annoPos5+=parseInt(listaPrezzoAuto[i].innerHTML);	  
		}
	    
	    var spese = [annoPos0, annoPos1, annoPos2, annoPos3, annoPos4, annoPos5]
	   
	    if (document.getElementById("chartType").value=="PerAnno") {
	      ctx.height = 430;
	       myChart = new Chart(ctx, {
	        type: 'line',
	        data: {
	          labels: anni,
	          datasets: [
	            {
	              label: 'My First dataset',
	              backgroundColor: brandService3,
	              borderColor: bd_brandService3,
	              pointHoverBackgroundColor: '#fff',
	              borderWidth: 0,
	              data: spese,
	              pointBackgroundColor: bd_brandService3
	            }
	          ]
	        },
	        options: {
	          maintainAspectRatio: false,
	          legend: {
	            display: false
	          },
	          responsive: true,
	          scales: {
	            xAxes: [{
	              gridLines: {
	                drawOnChartArea: true,
	                color: '#f2f2f2'
	              },
	              ticks: {
	                fontFamily: "Poppins",
	                fontSize: 12
	              }
	            }],
	            yAxes: [{
	              ticks: {
	                beginAtZero: true,
	                maxTicksLimit: 5,
	                stepSize: 20000,
	                max: 300000,
	                fontFamily: "Poppins",
	                fontSize: 12
	              },
	              gridLines: {
	                display: false,
	                color: '#f2f2f2'
	              }
	            }]
	          },
	          elements: {
	            point: {
	              radius: 3,
	              hoverRadius: 4,
	              hoverBorderWidth: 3,
	              backgroundColor: '#333'
	            }
	          }


	        }
	      });
	    }

	  } catch (error) {
	    console.log(error);
	  }
	  


	  
	  

	  try {

	    // Recent Report 3
	    const bd_brandProduct3 = 'rgba(0,181,233,0.9)';
	    const bd_brandService3 = 'rgba(0,173,95,0.9)';
	    const brandProduct3 = 'transparent';
	    const brandService3 = 'transparent';
	    
	    var pippo=document.getElementById("pip");
	    
	    var listaPrezzoAuto=document.getElementsByClassName("prezzoAuto");
	    var listaData=document.getElementsByClassName("data");
	    
	    var gen=0,feb=0,mar=0,ap=0,mag=0,giu=0,lug=0,ago=0,set=0,ott=0,nov=0,dic=0;
	    
	    for(var i = 0; i < listaData.length; i++)
	    	{
	    		if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==1)
	    			gen+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==2)
	    			feb+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==3)
	    			mar+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==4)
	    			ap+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==5)
	    			mag+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==6)
	    			giu+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==7)
	    			lug+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==8)
	    			ago+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==0 &&listaData[i].innerHTML.charAt(6)==9)
	    			set+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==1 &&listaData[i].innerHTML.charAt(6)==0)
	    			ott+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==1 &&listaData[i].innerHTML.charAt(6)==1)
	    			nov+=parseInt(listaPrezzoAuto[i].innerHTML);
	    		else if(listaData[i].innerHTML.charAt(5)==1 &&listaData[i].innerHTML.charAt(6)==2)
	    			dic+=parseInt(listaPrezzoAuto[i].innerHTML);
	    	}
	    
	    
	    var spese = [gen, feb, mar, ap, mag, giu, lug, ago, set, ott, nov, dic];


	   
	    if (document.getElementById("chartType").value=="PerMese") {
	      ctx.height = 430;
	       myChart = new Chart(ctx, {
	        type: 'line',
	        data: {
	          labels: ['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio', 'Agosto','Settebre','Ottobre','Novembre','Dicembre'],
	          datasets: [
	            {
	              label: 'My First dataset',
	              backgroundColor: brandService3,
	              borderColor: bd_brandService3,
	              pointHoverBackgroundColor: '#fff',
	              borderWidth: 0,
	              data: spese,
	              pointBackgroundColor: bd_brandService3
	            }
	          ]
	        },
	        options: {
	          maintainAspectRatio: false,
	          legend: {
	            display: false
	          },
	          responsive: true,
	          scales: {
	            xAxes: [{
	              gridLines: {
	                drawOnChartArea: true,
	                color: '#f2f2f2'
	              },
	              ticks: {
	                fontFamily: "Poppins",
	                fontSize: 12
	              }
	            }],
	            yAxes: [{
	              ticks: {
	                beginAtZero: true,
	                maxTicksLimit: 5,
	                stepSize: 20000,
	                max: 300000,
	                fontFamily: "Poppins",
	                fontSize: 12
	              },
	              gridLines: {
	                display: false,
	                color: '#f2f2f2'
	              }
	            }]
	          },
	          elements: {
	            point: {
	              radius: 3,
	              hoverRadius: 4,
	              hoverBorderWidth: 3,
	              backgroundColor: '#333'
	            }
	          }


	        }
	      });
	    }

	  } catch (error) {
	    console.log(error);
	  }
	  


	}

