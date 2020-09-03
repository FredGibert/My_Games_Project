import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  enableTime: true,
    dateFormat: "Y-m-d H:i",
    minDate: "today",
    time_24hr: true,
    hourIncrement:1,
    minuteIncrement:15,
});
