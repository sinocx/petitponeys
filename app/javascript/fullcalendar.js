import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';
import 'bootstrap/dist/css/bootstrap.css';
import '@fortawesome/fontawesome-free/css/all.css';
import bootstrapPlugin from '@fullcalendar/bootstrap';
document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin,timeGridPlugin,bootstrapPlugin,listPlugin],
    headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,dayGridWeek,dayGridDay,listWeek'
        },
    navLinks: true,
    eventLimit: true,
    locale: 'fr',
    events: {url: '/cours.json'},
    color: 'yellow',    // an option!
    textColor: 'black',
    height: 900,
    weekends: false,
    selectable: true,
  });

  calendar.render();
});
