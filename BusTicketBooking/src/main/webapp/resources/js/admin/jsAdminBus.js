/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function loadBus() {
    let msg = "";
    for (let i = 0; i < 10; i++) {
        msg +=
                `
        <tr class="align-middle">
            <td>` + i + `</td>
            <td>Tên xe ` + i + `</td>
            <td>Biển số xe ` + i + `</td>
            <td>Sức chứa ` + i + `</td>
            <td>Hãng sản xuất ` + i + `</td>
            <td>Loại xe ` + i + `</td>
            <td>
                <button class="btn btn-primary" type="button"><i class="bi bi-pencil-square"></i></button>
                <button class="btn btn-danger" type="button"><i class="fa fa-trash"></i></button>
            </td>
        </tr>
            `;
    }
    let d = document.getElementById("listBus");
    d.innerHTML = msg;
};