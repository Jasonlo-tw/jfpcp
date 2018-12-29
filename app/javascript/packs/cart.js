import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'

Vue.use(TurbolinksAdapter)

// document.addEventListener('turbolinks:load', () => {
//     const app = 

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

import QtyAdjust from './cartsComponents/QtyAdjust.vue.erb';
import ItemTotal from './cartsComponents/ItemTotal.vue.erb';


var vm = new Vue({
    el: '#app',
    data: function () {
        return {
            itemQuantity: 1,

        };

    },

    methods: {
        decQuantity: function () {
            return itemQuantity -= 1
        }
    },
    components: {
        QtyAdjust,
        ItemTotal
    }




});