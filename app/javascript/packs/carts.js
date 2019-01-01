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

// Define subtotal span to change value for
var subtotal_span = document.getElementById("subtotal")



// AddEventListener to each quantity change and then modify its innertext with newly calculated total
var quantity_select = document.querySelectorAll("#line_item_quantity")

Array.prototype.forEach.call(quantity_select, (e) => {

    e.addEventListener("DOMContentLoaded", function subtotal() {

        var total = 0

        for (let i = 0; i < id_p.length; i++) {

            total += price(i) * selected_q(i)

        }



        subtotal_span.innerText = `Subtotal USD$${total}`

    })
})



Array.prototype.forEach.call(quantity_select, (e) => {

    e.addEventListener("change", function subtotal() {

        var total = 0

        for (let i = 0; i < id_p.length; i++) {

            total += price(i) * selected_q(i)

        }



        subtotal_span.innerText = `Subtotal USD$${total}`

    })



})