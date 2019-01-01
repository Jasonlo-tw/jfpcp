import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'


Vue.use(TurbolinksAdapter)


// Select all the price elements
var id_p = document.querySelectorAll("#price");

// Select the price by index.
function price(i) {
    return parseFloat(id_p[i].innerText);
}

// likewise, select all the quantity elements
var id_quantity = document.querySelectorAll("#quantity");

// First select the quantity tag by i, then derive its value
function select_q(i) {
    return id_quantity[i].firstElementChild;
}

function selected_q(i) {
    return select_q(i).options[select_q(i).selectedIndex].value
}




// AddEventListener to form submission and start adding totals
document.addEventListener('turbolinks:load', () => {
    const app = new Vue({
        el: "#subtotal",
        data: function () {
            return {
                dummy: "",
                selected: ""
            };

        },

        computed: {
            subtotal: function () {


                var total = 0
                for (let i = 0; i < id_p.length; i++) {

                    total += price(i) * selected_q(i)

                }

                return total



            }
        }

    })
})



// function subtotal() {
//     for (let i = 0; i < id_p.length; i++) {
//         var subtotal = price(i) * selected_q(i)
//         price(i) * selected_q(i)

//     }

//     var subtotal_span = document.getElementById("subtotal")

//     subtotal_span.innerText = `Subtotal USD$${subtotal}`

// }