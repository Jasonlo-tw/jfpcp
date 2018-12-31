// Utilities
import TurbolinksAdapter from 'vue-turbolinks';
import Vue from 'vue/dist/vue.esm';

// Components
// import QtyAdjust from './cartsComponents/QtyAdjust.vue.erb';
// import ItemTotal from './cartsComponents/ItemTotal.vue.erb';
// import ItemPrice from './cartsComponents/ItemPrice.vue.erb'

// import App from '../app.vue'

Vue.use(TurbolinksAdapter)



// Implementation for cart

// Using Vue
// 1. Create Vue root instance, initialize an object Cart
// 2. Define data in root, eg. qty, total-price, subtotal
// 3. Write components in order to generate multiple Vue instances for each item, eg. dec-button, qty-show, inc-button, item-total, all-subtotal
// 4. Deliver the data to components by props.
// 5. As components are executed, emit their data to root instance.
// 6. For submit with Vue, post Cart data to cart controller and let Rails handle the communication with DB.

// or
// Above mentioned sees components as templates. If we don't use templates, one-layer of component should be enough.

// or
// Method 1
// Mainly use Rails helpers, use Vanilla listening to change and response with preventDefault
// Method 2 # Pinkoi way? # isomorphic
// Mainly use Vue, Rails sends JSON data to Vue and let Vue process data. As the process is finished, let Vue POST data with AXIOS as JSON to Rails controller.

// POSTing using AXIOS?

// or
// Implement v3 with Vue
// Load @line_items data from Rails using content_tag, turn it to dataset for Vue to manipulate. Mount Vue to #content to let the instances generate correctly with components. (Mounting to #app generates Vue instance only once, making the data manipulated being actually the same one.) Besides the shown data, make hidden fields for actual form processing (both bound with Vue). Vue here is used to manipulate the data filled in form and shown. Move the comments fields to Order model to streamline the process. Let Rails handle the posting to its own controller.


// Define these two variables in global scope so the functions can access them.
// var price, quantity;

// Take the controller data from the content_tag
// document.addEventListener('DOMContentLoaded', () => {
//     let e = document.getElementById("lineitem-data")

//     var price = e.dataset.price;
//     var quantity = e.dataset.quantity;
// });

// Create Vue instance to manipulate data.




var vm = new Vue({
    el: '#form',
    data: function () {
        return {

        };

    },
    components: {
        QtyAdjust
    }
});

// TODO: use queryselectorall to implement subtotal



// Prepare the variables for data after the Vue instance is created but before data is filled in
// mounted: function () {
//     let e = document.getElementById("lineitem-data")

//     var price = e.dataset.price;
//     var quantity = e.dataset.quantity;
// }