'use strict';

window.addEventListener('load', () => {
	
    let controller = new Controller();
    //-----
    controller.activatePass1Listener();
    controller.activatePass2Listener();
    controller.activateEmailListener();
    controller.activateSubmitListener();
    controller.generatePassword(20);
});