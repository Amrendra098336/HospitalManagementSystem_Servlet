/**
 * 
 */

const emailField = document.getElementById("email-validation");
let outText = document.getElementById("filed-validation");

emailField.addEventListener('change', (e) =>{
	let email = document.getElementById("email-validation").value;
	let emailValidationResult = emailValidator(email);
	if(!emailValidationResult){
		outText.style.color="red";
		outText.innerText ="Please check Email Address";
	}
});


function emailValidator(email) {
    const regex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    return regex.test(email);
}