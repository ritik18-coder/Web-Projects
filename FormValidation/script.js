function validation(){

    firstName = document.getElementById('firstname').value;
    lastName = document.getElementById('lastname').value;
    emailID = document.getElementById('email').value;
    password = document.getElementById('password').value;
    rPassword=document.getElementById('repeatPassword').value;

    if(firstName==""){
      alert('Please Enter your First Name');
      return false;
    }
    if(lastName==""){
      alert('Please Enter your Last Name');
      return false;
    }
    if(emailID==""){
      alert('Please Enter your Email ID');
      return false;
    }
    if(password==""){
      alert('Please Enter your Password');
      return false;
    }
    if(rPassword!=password){
        alert('Passwords would not match');
        return false;
    }

}