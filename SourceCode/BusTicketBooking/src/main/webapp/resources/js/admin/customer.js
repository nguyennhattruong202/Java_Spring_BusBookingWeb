/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function deleteCustomer(endpoint, customerId) {
        fetch(endpoint, {
            method: "put",
            body: JSON.stringify({"id": customerId}),
            headers: {"Content-Type": "application/json"}
        }).then(function (res) {
            if (res.status === 204) {
                location.reload();
            }
        }).catch(function (err) {
            console.error(err);
        });
    }