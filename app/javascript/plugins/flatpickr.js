import flatpickr from "flatpickr";

flatpickr(".datepicker", {
    minDate: "today",
    maxDate: new Date().fp_incr(365) // 14 days from now
  });
