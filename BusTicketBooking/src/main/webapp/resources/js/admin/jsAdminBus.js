/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function loadBus() {
    let msg = "";
    for (let i = 0; i <= 20; i++) {
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
                <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#deleteBusModal"><i class="fa fa-trash"></i></button>
            </td>
            <div class="modal fade" id="deleteBusModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Attention</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            Are you sure to delete this bus?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary">Yes</button>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </tr>
            `;
    }
    let d = document.getElementById("listBus");
    d.innerHTML = msg;
};