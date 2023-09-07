// Wrap your code in a function to create a scope
(function() {
    const toggleSwitch = document.querySelector('.toggle-switch');
    const toggleForm = document.querySelector('.toggle-form');
  
    if (toggleSwitch && toggleForm) {
      toggleSwitch.addEventListener('change', function () {
        toggleForm.submit();
      });
    }
  
    const modifyButtons = document.querySelectorAll('.modify-button');
    const modifyForms = document.querySelectorAll('.modify-form');
  
    modifyButtons.forEach((button, index) => {
      button.addEventListener('click', function () {
        if (modifyForms[index].style.display === 'none') {
          modifyForms[index].style.display = 'block';
        } else {
          modifyForms[index].style.display = 'none';
        }
      });
    });
  
    // // Function to clean up resources
    // function cleanUp() {
    //   if (toggleSwitch && toggleForm) {
    //     toggleSwitch.removeEventListener('change', toggleFormSubmit);
    //   }
  
    //   modifyButtons.forEach((button, index) => {
    //     button.removeEventListener('click', toggleModifyFormDisplay);
    //   });
    // }
  
    // // Event listener for the 'beforeunload' event
    // window.addEventListener('beforeunload', () => {
    //   cleanUp();
    // });
  })();
  