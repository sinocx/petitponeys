import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';

document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    
    plugins: [timeGridPlugin,dayGridPlugin,listPlugin],

    initialView: 'timeGridWeek',
    timeZone: 'Europe/Paris',
    headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
    navLinks: true,
    eventLimit: true,
    locale: 'fr',
    timeZone: 'Europe/Paris',
    events: {url: '/cours.json'},
    //BackgroundColor: '#ED1317',
    //eventColor: '#378006',
    //eventTextColor: 'red',
    allDay: true,
    display: 'block',
    //color: 'yellow',    // an option!
    textColor: 'black',

    height: 900,
    weekends: false,
    selectable: true,
    editable: true,
  });

  calendar.render();
});
