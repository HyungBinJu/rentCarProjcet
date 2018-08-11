$(function() {
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
        dateFormat:"yy-mm-dd"
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
        dateFormat:"yy-mm-dd"
    });
    
    $("#nextCar_btn").on("click",function(){
    	$("#car_div").show();
    	$("#reservation_div").hide();
    	$("#qualification_div").hide();
    	$("#option_div").hide();
    });
    
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