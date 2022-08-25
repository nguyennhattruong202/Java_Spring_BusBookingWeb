/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function inputSearchSelected(){
    let msg = "";
    let mySelect = document.getElementById("selectedSearch").value;
    let formSearch = document.getElementById("formSearchTypeEmployee");
    msg += `
    <div class="input-group my-style-element-height">
        <input name="`+ mySelect +`" type="search" class="form-control my-style-input-radius">
        <button class="btn btn-primary my-style-input-radius" type="submit"><i class="bi bi-search"></i></button>
    </div>
    `;
    formSearch.innerHTML = msg;
}
