// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// import $ from 'jquery';

// import "lightgallery";

import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';

import { next } from '../components/quiz-card';
import { tabs } from '../components/request-booking-tab';
import { initChatroomCable } from '../channels/chatroom_channel';

// import {gallery} from "../components/gallery";

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  tabs();
  // gallery();
  initChatroomCable();

})

// $(document).on('turbolinks:load', function(){
//   var gallery = $("#lightGallery").lightGallery({
//     speed: 1000
//   });
// });


// $(document).ready(function(){$('#lightgallery').lightGallery();
// selector:'item'
// });


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


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

//document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
//});
