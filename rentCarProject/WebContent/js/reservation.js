$(function() {
	
	var rentDate = null;
	var returnDate = null;
    $( "#resStartDate" ).datepicker({ 
    	showOn:"both",
		buttonImage: "../images/icon/a.jpg",
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
        	}else if(returnDate2 < rentDate2){
        		alert("대여일시가 반납일시 보다 늦을 수 없습니다.");
        		$("#resStartDate").val("");
        		$("#resStartDate").focus();
        	}else if(returnDate2 > rentDate2){
        		$("#rentDate").text(date);
        	}    
         }
    });
    
    $( "#resEndDate" ).datepicker({
    	showOn:"both",
		buttonImage: "../images/icon/a.jpg",
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
        	}else if(returnDate2 > rentDate2){
        		$("#returnDate").text(date);
        	}else if(returnDate2 < rentDate2){
        		alert("대여일시가 반납일시 보다 늦을 수 없습니다.");
        		$("#resEndDate").focus();
        	}
         }
    });
    
    
    $("#store").on("change",function(){
    	var shopId = $("#store option:selected").val();
    	$(".shop").text($("#store option:selected").text());
    });
    
    $("#nextCar_btn").on("click", function(){
    	if($("#resStartDate").val()==""){
    		alert("대여일시를 입력하세요.");
    		$("#resStartDate").focus();
    	}else if($("#resEndDate").val()==""){
    		alert("반납일시를 입력하세요.");
    		$("#resEndDate").focus();
    	}else if($(".shop").text()==""){
    		alert("지점을 선택해 주세요.");
    		$("#store").focus();
    	}else{
    		$("#car_div").show();
        	$("#reservation_div").hide();
        	$("#qualification_div").hide();
        	$("#option_div").hide();
    	}
    });
   /* 
    $("#nextCar_btn").on("click",function(){
    	$("#car_div").show();
    	$("#reservation_div").hide();
    	$("#qualification_div").hide();
    	$("#option_div").hide();
    });
    */
    $("#preDate_btn").on("click",function(){
    	$("#reservation_div").show();
    	$("#car_div").hide();
    	$("#qualification_div").hide();
    	$("#option_div").hide();
    });
    
    $("#nextOpt_btn").on("click",function(){
    	$("#option_div").show();
    	$("#reservation_div").hide();
    	$("#car_div").hide();
    	$("#qualification_div").hide();
    });
    
    $("#preCar_btn").on("click",function(){
    	$("#car_div").show();
    	$("#reservation_div").hide();
    	$("#qualification_div").hide();
    	$("#option_div").hide();
    });
    
    $("#nextQua_btn").on("click",function(){
    	$("#qualification_div").show();
    	$("#reservation_div").hide();
    	$("#car_div").hide();
    	$("#option_div").hide();
    });
    
    
    
    
});