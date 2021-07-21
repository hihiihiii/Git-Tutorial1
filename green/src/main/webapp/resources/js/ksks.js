function signUp(){
    if(document.frm.userid.value == ""){
        alert("아이디를 입력하세요.");
        document.frm.userid.focus();
        return false;
    }

    if(document.frm.userpassword.value == ""){
        alert("비밀번호를 입력하세요.");
        document.frm.userpassword.focus();
        return false;
    }
    
    if(document.frm.confirm-password.value == ""){
        alert("비밀번호를 입력해주세요.");
        document.frm.confirm-password.focus();
        return false;
    }

    if(document.frm.email.value == ""){
        alert("이메일을 입력해주세요.");
        document.frm.email.focus();
        return false;
    }

    if(document.frm.userpassword.value != document.frm.confirm-password.value){
        alert("비밀번호가 중복되지않았습니다.");
        document.frm.userpassword.focus();
        return false;
    }

    return true;
}

function login(){
    if(document.frm2.userid.value == ""){
        alert("아이디를 입력하세요.");
        document.frm.userid.focus();
        return false;
    }

    if(document.frm2.userpassword.value == ""){
        alert("비밀번호를 입력하세요.");
        document.frm.userpassword.focus();
        return false;
    }
    return true;
}