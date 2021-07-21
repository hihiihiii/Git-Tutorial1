


function Standard(){
    window.open("standard.jsp","standard","width=1000, height=700");
	/*location.href='standard.jsp';*/
}

function Deluxe(){
    window.open("deluxe.jsp","deluxe","width=1000, height=700");
	/*location.href='deluxe.jsp';*/
}

function Premium(){
    window.open("premium.jsp","premium","width=1000, height=700");
	/*location.href='premium.jsp';*/
 }

function Suite(){
    window.open("suite.jsp","suite","width=1000, height=700");
	/*location.href='suite.jsp';*/
 }

function Premium_Suite(){
    window.open("premium_Suite.jsp","premium_Suite","width=1000, height=700");
	/*location.href='premium_Suite.jsp';*/
 }

function closed(){
    var close = confirm("창을 닫으시겠습니까?");
	
	close ? self.close() : rerurn ;
	
}