//得到时间

function getdate(){
		var date = new Date();
		//转换格式
		var d1 = date.toLocaleString();
		var div1= document.getElementById("times");
//向标签里写入内容
		div1.innerHTML=d1;
	}
//设置定时器	
setInterval("getdate();",1000);
//添加节点
	function add(){
	//获取li1标签
	var li1 = document.getElementById("li2");
	//创建li
	var li3 = document.createElement("li");
	//创建文本
	var text3 = document.createTextNode("3");
	//把文本添加到li下面.appendChild
	li3.appendChild(text3);
	//获取到ul
	var ul1 = document.getElementById("ul1");
	//在li1之前添加新建的
	ul1.insertBefore(li3,li1);
	
}
	
	
	
    function show(){   
    var obj2 = document.getElementById("fore-2");
    var obj3 = document.getElementById("fore-3");

    if(obj2.style.display == "none"){ 
                        
        obj2.style.display = "block"; 

    }      
    else
    	obj2.style.display = "none"
    	
    if(obj3.style.display == "none"){ 
                
	      obj3.style.display = "block"; 
	  
	   }      
	    else
	     obj3.style.display = "none"
}

    function show1(){   
        var obj2 = document.getElementById("fore-11");
        var obj3 = document.getElementById("fore-12");
        var obj4 = document.getElementById("fore-13");
        if(obj2.style.display == "none"){ 
                            
            obj2.style.display = "block"; 

        }      
        else
        	obj2.style.display = "none"
        	
        if(obj3.style.display == "none"){ 
                    
    	      obj3.style.display = "block"; 
    	  
    	   }      
    	    else
    	     obj3.style.display = "none"
    	    	  if(obj4.style.display == "none"){ 
                      
    	    	      obj4.style.display = "block"; 
    	    	  
    	    	   }      
    	    	    else
    	    	     obj4.style.display = "none"
    }

    function show2(){   
        var obj2 = document.getElementById("fore-21");
        var obj3 = document.getElementById("fore-22");
        var obj4 = document.getElementById("fore-23");
        if(obj2.style.display == "none"){ 
                            
            obj2.style.display = "block"; 

        }      
        else
        	obj2.style.display = "none"
        	
        if(obj3.style.display == "none"){ 
                    
    	      obj3.style.display = "block"; 
    	  
    	   }      
    	    else
    	     obj3.style.display = "none"
    	    	  if(obj4.style.display == "none"){ 
                      
    	    	      obj4.style.display = "block"; 
    	    	  
    	    	   }      
    	    	    else
    	    	     obj4.style.display = "none"
    }
    
    function show3(){   
        var obj2 = document.getElementById("fore-31");
        var obj3 = document.getElementById("fore-32");
     
        if(obj2.style.display == "none"){ 
                            
            obj2.style.display = "block"; 

        }      
        else
        	obj2.style.display = "none"
        	
        if(obj3.style.display == "none"){ 
                    
    	      obj3.style.display = "block"; 
    	  
    	   }      
    	    else
    	     obj3.style.display = "none"
    	    
    }
    
    function show4(){   
        var obj2 = document.getElementById("fore-41");
        var obj3 = document.getElementById("fore-42");
        var obj4 = document.getElementById("fore-43");
        var obj5 = document.getElementById("fore-44");
        if(obj2.style.display == "none"){ 
                            
            obj2.style.display = "block"; 

        }      
        else
        	obj2.style.display = "none"
        	
        if(obj3.style.display == "none"){ 
                    
    	      obj3.style.display = "block"; 
    	  
    	   }      
    	    else
    	     obj3.style.display = "none"
    	    	  if(obj4.style.display == "none"){ 
                      
    	    	      obj4.style.display = "block"; 
    	    	  
    	    	   }      
    	    	    else
    	    	     obj4.style.display = "none"
    	    	    	  if(obj5.style.display == "none"){ 
    	                      
    	    	    	      obj5.style.display = "block"; 
    	    	    	  
    	    	    	   }      
    	    	    	    else
    	    	    	     obj5.style.display = "none"
    }
    
    function show5(){   
        var obj2 = document.getElementById("fore-51");
        var obj3 = document.getElementById("fore-52");
        var obj4 = document.getElementById("fore-53");
        var obj5 = document.getElementById("fore-54");
        if(obj2.style.display == "none"){ 
                            
            obj2.style.display = "block"; 

        }      
        else
        	obj2.style.display = "none"
        	
        if(obj3.style.display == "none"){ 
                    
    	      obj3.style.display = "block"; 
    	  
    	   }      
    	    else
    	     obj3.style.display = "none"
    	    	  if(obj4.style.display == "none"){ 
                      
    	    	      obj4.style.display = "block"; 
    	    	  
    	    	   }      
    	    	    else
    	    	     obj4.style.display = "none"
    	    	    	  if(obj5.style.display == "none"){ 
    	                      
    	    	    	      obj5.style.display = "block"; 
    	    	    	  
    	    	    	   }      
    	    	    	    else
    	    	    	     obj5.style.display = "none"
    }
    
 