/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */

function loadBus(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            msg += `
                    <tr class="align-middle">
                        <td>${data[i][0]}</td>
                        <td>${data[i][1]}</td>
                        <td>${data[i][2]}</td>
                        <td>${data[i][3]}</td>
                        <td>${data[i][4]}</td>
                        <td>${data[i][5]}</td>
                        <td>
                            <a class="text text-primary h5" data-bs-toggle="modal" data-bs-target="#editBusModal${data[i][0]}"><i class="bi bi-pencil-square"></i></a>
                            <a class="text text-danger h5 ms-2" data-bs-toggle="modal" data-bs-target="#deleteBusModal${data[i][0]}"><i class="fa fa-trash"></i></a>
                        </td>
                        <div class="modal fade" id="deleteBusModal${data[i][0]}">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Attention</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <div class="modal-body">Are you sure to delete ${data[i][1]} ?</div>

                                    <div class="modal-footer">
                                        <button class="btn btn-primary">Yes</button>
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="modal fade" id="editBusModal${data[i][0]}">
                            <div class="modal-dialog modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Edit bus</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <div class="modal-body">
                                        <form>
                                            <div class="mb-3">
                                                <label class="col-form-label">Tên xe:</label>
                                                <input class="form-control" type="text" value="${data[i][1]}">
                                            </div>

                                            <div class="mb-3">
                                                <label class="col-form-label">Biển số xe:</label>
                                                <input class="form-control" type="text" value="${data[i][2]}" >
                                            </div>

                                            <div class="mb-3">
                                                <label class="col-form-label">Sức chứa:</label>
                                                <input class="form-control" type="number" value="${data[i][3]}">
                                            </div>

                                            <div class="mb-3">
                                                <label class="col-form-label">Hãng sản xuất:</label>
                                                <input class="form-control" type="text" value="${data[i][4]}">
                                            </div>

                                            <div class="mb-3">
                                                <label class="col-form-label">Loại:</label>
                                                <select class="form-select" aria-label="Default select example">
                                                    <option value="Xe ngồi" selected>Xe ngồi</option>
                                                    <option value="Xe giường">Xe giường</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </tr>`;
        };
        let d = document.getElementById("listBus");
        d.innerHTML = msg;
    });
};