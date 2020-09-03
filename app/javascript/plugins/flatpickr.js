import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  enableTime: true,
    dateFormat: "d-m-Y H:i",
    minDate: "today",
    time_24hr: true,
    hourIncrement:1,
    minuteIncrement:15,
});
