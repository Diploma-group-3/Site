'use strict'

class Controller{
    constructor(){
		
        this._pass1 = document.getElementById('pass1');
        this._pass2 = document.getElementById('pass2');
        this._email = document.getElementById('email');

        this._pass1Error = document.getElementById('pass1-err');
        this._pass2Error = document.getElementById('pass2-err');
        this._emailError = document.getElementById('email-err');

        this._genPass = document.querySelector('.gen-pass');

        this._form = document.getElementById('signup-form');
        this._validator = new Validator();
    }

   
    // - 1
    activatePass1Listener(){
        this._pass1.addEventListener('blur',() => {
            this._validator.checkPass1(this._pass1.value);
            if(this._validator.pass1IsValid)
            {
                this._pass1.style.boxShadow = '0px 0px 10px green';
                this._pass1Error.innerHTML = '';
            }
            else
            {
                this._pass1.style.boxShadow = '0px 0px 10px red';
                this._pass1Error.innerHTML = '\
                Пароль має бути довжиною не меньше 8-ми символів,\
                серед яких дозволені маленькі та великі букви\
                або цифри, при чому має бути хочаб одна маленька буква,\
				хочаб одна велика букваб хочаб одна цифра\
				';
            }
        });
    }
	
    // - 2
    activatePass2Listener(){
        this._pass2.addEventListener('blur',() => {
            
                this._validator.checkPass2(this._pass1.value,this._pass2.value);
                if(this._validator.pass2IsValid)
                {
                    this._pass2.style.boxShadow = '0px 0px 10px green';
                    this._pass2Error.innerHTML = '';
                }
                else
                {
                    this._pass2.style.boxShadow = '0px 0px 10px red';
                    this._pass2Error.innerHTML = 'Введенні паролі не співпадають!';
                }
            });
        }
		
    // - 3
    activateEmailListener(){
        this._email.addEventListener('blur',() => {
            this._validator.checkEmail(this._email.value);
                if(this._validator.emailIsValid)
                {
                    this._email.style.boxShadow = '0px 0px 10px green';
                    this._emailError.innerHTML = '';
                }
                else
                {
                    this._email.style.boxShadow = '0px 0px 10px red';
                    this._emailError.innerHTML = '\
                    В електронній адресі заборонено великі літери [ A ],\
                    обовязкові символи, не більше одного: [ @ ], [ . ],\
                    всі літери повинні бути латинськими\
                    ';
                }
        });
    }
	
    // - 4
    activateSubmitListener(){
        this._form.addEventListener('submit', (event) => {
			
			if(!this._validator.checkAll())
			{
				alert('Відправка данних заблокована валідатором!');
			    event.preventDefault();
			}
        });
    }
	
	// - 5
    generatePassword(length) {
        this._genPass.addEventListener('click', () => {
            let charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            let password = "";
            
            for (var i = 0; i < length; i++) {
                let randomIndex = Math.floor(Math.random() * charset.length);
                password += charset[randomIndex];
            } 

            this._pass1.setAttribute('type','text');
            this._pass2.setAttribute('type','text');
            this._pass1.value = password;
            this._pass2.value = password;
			
			this._validator.checkPass1(this._pass1.value);
			this._validator.checkPass2(this._pass1.value, this._pass2.value)
        });
      }
      
} 