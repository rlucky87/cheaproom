$(document).on('turbolinks:load', function() {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  });
});
