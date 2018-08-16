$(function() {
	
	var rentDate = null;
	var returnDate = null;
    $( "#resStartDate" ).datepicker({ 
    	showOn:"both",
		buttonImage: "images/icon/a.jpg",
		buttonImageOnly: true,
		changeMonth: true,
		changeYear: true,
		nextText: '다음달',
		prevText: '이전달',
		minDate: 0,
        maxDate: '+3M',
        dateFormat:"yy-mm-dd",
        onSelect: function(date) {
        	rentDate = date;
        	var rentDate2 = new Date(rentDate);
        	var returnDate2 = new Date(returnDate);
        	if(returnDate == null){
        		$("#rentDate").text(date);
        	}else if(returnDate2 <= rentDate2){
        		alert("대여일시가 반납일시 보다 늦을 수 없습니다.");
        		$("#resStartDate").val("");
        		$("#resStartDate").focus();
        	}else if(returnDate2 >= rentDate2){
        		$("#rentDate").text(date);
        	}    
         }
    });
    
    $( "#resEndDate" ).datepicker({
    	showOn:"both",
		buttonImage: "images/icon/a.jpg",
		buttonImageOnly: true,
		changeMonth: true,
		changeYear: true,
		nextText: '다음달',
		prevText: '이전달',
		minDate: 0,
        maxDate: '+3M',
        dateFormat:"yy-mm-dd",
        onSelect: function(date) {
        	returnDate = date;
        	var rentDate2 = new Date(rentDate);
        	var returnDate2 = new Date(returnDate);
        	if(rentDate == null){
        		alert("대여일시를 먼저 선택해야 합니다.")
        		$("#resEndDate").val("");
        		$("#resStartDate").focus();
        	}else if(returnDate2 >= rentDate2){
        		$("#returnDate").text(date);
        	}else if(returnDate2 <= rentDate2){
        		alert("대여일시가 반납일시 보다 늦을 수 없습니다.");
        		$("#resEndDate").focus();
        	}
         }
    });
    
    
    $("#store").on("change",function(){
    	var shopId = $("#store option:selected").val();
    	$(".shop").text($("#store option:selected").text());
    });
    
    $("#nextCar_btn").off('click').on("click", function(event){
    	if($("#resStartDate").val()==""){
    		alert("대여일시를 입력하세요.");
    		$("#resStartDate").focus();
    		event.preventDefault();
    	}else if($("#resEndDate").val()==""){
    		alert("반납일시를 입력하세요.");
    		$("#resEndDate").focus();
    		event.preventDefault();
    	}else if($(".shop").text()==""){
    		alert("지점을 선택해 주세요.");
    		$("#store").focus();
    		event.preventDefault();
    	}else{
    		$("#select_date").on("submit",function(event){
	   		 	this.action="SelectDateCar";
	   		 	this.method="get";
	  	     });	
    	}
    });
    
    
    $(".carType").on("submit",function(){
    	var carType = $(".carType").val();
    	this.action="SelectDateCar";
   		this.method="get";
    	
    });
    
    $(".carSelect").off().on("click", function(){
		var carInfo = $("input[type=radio][name=carSelect]:checked").val();
    	$("#carName").text(carInfo.split("/")[0]);
    	var carPrice = carInfo.split("/")[2];
    	
    	var rentdate = $("#rentdate").val();
    	var returndate = $("#returndate").val();
    	
    	var totalday = calcTotalday(rentdate,returndate);
    	
    	var price = carPrice * totalday;
    	$("#price").val(price);
    	$("#price_param").val(price);
    	
    });
    
    $("#preDate_btn").on("click", function(){
    	$("#car_form").attr("action","ReservationUI");
    });
    
    $("#nextOpt_btn").on("click", function(){
    	$("#car_form").attr("action","SelectOption");
    });
    
    
    $(".cupon_select").off().on("change",function(event){
    	var promotion = $(".cupon_select option:selected");
    	$("#promotion").val(promotion.text());
    	var promotion_val = promotion.val();
    	var price = $("#price").val();
    	if(promotion_val == ""){
    		$("#price").val(price);
    		$("#discount_price").val(price);    	
    	}else{
    		var promotion_price = price * promotion_val;
    		$("#discount_price").val(promotion_price);    	
    	}
    	

    });
    
    $(".insurance_select").off().on("change",function(event){
    	var insurance = $(".insurance_select option:selected");
    	
    	var rentdate = $("#rentdate").val();
    	var returndate = $("#returndate").val();
    	var totalday = calcTotalday(rentdate,returndate);
    	
    	var price = $("#param_price").val();
    	
    	if(insurance.val() == ""){
    		$("#price").val(price);
    		if($(".cupon_select option:selected").val()==""){
    			$("#discount_price").val(price); 
    		}else{
    			var promotion_val = $(".cupon_select option:selected").val()
    			var reprice = price*promotion_val;
    			$("#discount_price").val(reprice); 
    		}	
    	}else{
    		$("#insurance").val(insurance.text());
    		
    		var insurance_val = insurance.val() * totalday;
    		var insurance_price = parseInt(price) + parseInt(insurance_val);
    		var promotion_val = $(".cupon_select option:selected").val();
    		$("#price").val(insurance_price);
    		if(promotion_val==""){
    			promotion_val = 1;
    		}
    		var promotion_price = insurance_price * promotion_val;
    		$("#discount_price").val(promotion_price); 
    	}
    	
    	
    	 	
   
    });
    
    $(".option_checkbox").off().on("click",function(){
		var result = "";
		if($(".option_checkbox").is(":checked")){
			$("input[type='checkbox'].option_checkbox:checked").each(function(index,data){
				result += data.value + " ";
				$("#car_option").val(result);
			});
		}else{
			if($("input[type='checkbox'].option_checkbox:checked").length == 0){
				$("#car_option").val("");
			}
		}
		
    });
    
    $("#nextQua_btn").on("click", function(){
    	$("#option_form").attr("action","AgreementServlet");
    });

    function calcTotalday(first,last){
    	var dRent = Date.parse(first);
    	var dReturn = Date.parse(last);

    	var diff = dReturn - dRent;
    	var day = 24 * 60 * 60 * 1000; // 시간 * 분 * 초 * 밀리세컨
    	var totalday = (diff/day)+1;
    	
    	return totalday;
    }
    
    
   $("#qua_radio").on("click", function(){
	   console.log("aa");
	  $("#orderBtn").removeAttr('disabled');
	  $("#cancelBtn").removeAttr('disabled');
   });
    
    
});