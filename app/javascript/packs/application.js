// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//= require fullcalendar

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});


//= require moment 
//= require fullcalendar
//= require fullcalendar/locale-all
//require("moment")
//require("fullcalendar")
//require("fullcalendar/locate-all")
//$('#calendar').fullCalendar({});


require("fullcalendar.js")
require("home_main.js")
require("../../assets/stylesheets/vendor/jquery/jquery.min.js")
require("../../assets/stylesheets/vendor/bootstrap/js/bootstrap.bundle.min.js")
require("../../assets/stylesheets/vendor/jquery.easing/jquery.easing.min.js")
require("../../assets/stylesheets/vendor/php-email-form/validate.js")
require("../../assets/stylesheets/vendor/counterup/counterup.min.js")
require("../../assets/stylesheets/vendor/waypoints/jquery.waypoints.min.js")
require("../../assets/stylesheets/vendor/isotope-layout/isotope.pkgd.min.js")
require("../../assets/stylesheets/vendor/superfish/superfish.min.js")
require("../../assets/stylesheets/vendor/hoverIntent/hoverIntent.js")
require("../../assets/stylesheets/vendor/owl.carousel/owl.carousel.min.js")
require("../../assets/stylesheets/vendor/venobox/venobox.min.js")
require("../../assets/stylesheets/vendor/aos/aos.js")

