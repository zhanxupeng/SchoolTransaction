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