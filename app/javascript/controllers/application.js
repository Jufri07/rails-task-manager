import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

const deleteButton = document.querySelectorAll('.delete-icon');

deleteButton.forEach(function(button) {
  button.addEventListener('click', function(event) {
    const taskElement = event.target.closest('li');
    taskElement.remove();
  });
});
