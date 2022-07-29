const $  = document.querySelector.bind(document)
const $$  = document.querySelectorAll.bind(document)

let currentFormIndex = 0
const login =  $(".header-top-login")
const modal = $(".modal-wrapper")
const closeModal = $(".btn-close-login")
const modalOverlay = $(".modal__overlay")
const headingLogins = $$(".heading")
const tabLogins = $$(".login-tab")
const btnCart = $(".header-cart")
const cartMain = $(".cart-wrap")
const btnSearch = $(".btn-search")
const searchMain = $(".header-search-body")
const lines = $$(".line")
const formSelects = $$(".form-select")
const selectLists = $$(".form-select-list")
const selectItems = $$(".select-car-item")
const formSelectText = $$(".form-select span")
const headerSearch = $(".header-search-body")
const headerContainer = $(".header-container-wrap")
const btnSidebar = $(".btn-list")
const btnCloseSideBar = $(".btn-close")
const sideBarWrap = $(".side-bar-wrapper")
const overlayMobile = $(".overlay__mobile")
const dropDowns = $$(".drop-down")
const navListChild = $$(".nav-list-child")
const bntCarsMenu = $$(".btn-cars-menu")
const btnScrollTop = $(".btn-scroll-top")
const init = {
  cars: [
    {
      id: "1",
      name: "Ha Noi - TP.HCM",
      desc: "Tren xe co 3 tai xe, luan phien thay doi",
      price: "1000000",
      img: "./assets/assetHome/img/images/t_released_cars_thumb01.jpg",
      type: "new-car",
    },
    {
      id: "2",
      name: "Ha Noi - Hai Phong",
      desc: "Tren xe co 3 tai xe, luan phien thay doi",
      price: "300000",
      img: "./assets/assetHome/img/images/t_released_cars_thumb02.jpg",
      type: "new-car",
    },
    {
      id: "3",
      name: "Da Nang - TP.HCM",
      desc: "Tren xe co 3 tai xe, luan phien thay doi",
      price: "700000",
      img: "./assets/assetHome/img/images/t_released_cars_thumb03.jpg",
      type: "used-car",
    },
    {
      id: "4",
      name: "TP.HCM - Lang Son",
      desc: "Tren xe co 3 tai xe, luan phien thay doi",
      price: "500000",
      img: "./assets/assetHome/img/images/t_released_cars_thumb04.jpg",
      type: "used-car",
    },
    {
      id: "5",
      name: "Son La - Bac Ninh",
      desc: "Tren xe co 3 tai xe, luan phien thay doi",
      price: "300000",
      img: "./assets/assetHome/img/images/t_released_cars_thumb05.jpg",
      type: "new-car",
    },
    {
      id: "6",
      name: "TP.HCM - Long An",
      desc: "Tren xe co 3 tai xe, luan phien thay doi",
      price: "300000",
      img: "./assets/assetHome/img/images/t_released_cars_thumb06.jpg",
      type: "used-car",
    },
  ],
};

function handleLogin(){
    // handle close/open
    login.addEventListener("click", () => {
        //window.onscroll = function () { window.scrollTo(0, 0); };
        modal.classList.add("show")
    })
    closeModal.addEventListener("click", () => {
        modal.classList.remove("show")
        window.onscroll = function () { };

    })
    modalOverlay.addEventListener("click", () => {
        modal.classList.remove("show")
        window.onscroll = function () { };
    })
    //handle change tab
    function changeTabLogin() {
        headingLogins.forEach((heading,index) => {
            const tabLogin = tabLogins[index]
            const line = lines[index]
            heading.onclick = function(){
                $(".heading.active").classList.remove("active")
                heading.classList.add("active")

                $(".login-tab.active").classList.remove("active")
                tabLogin.classList.add("active")

                $(".line.active").classList.remove("active")
                line.classList.add("active")
            }
        })
    }
    changeTabLogin()
}

function handleShowCart() {
    btnCart.addEventListener("click", () => {
        cartMain.classList.toggle("show")
    })
}

function handleSearch(){
    btnSearch.addEventListener("click", () => {
        searchMain.classList.toggle("show")
        $('.btn-search > .fa-magnifying-glass').classList.toggle('fa-square-xmark');
    })

}
function handleSelectForm(){
    formSelects.forEach((formSelect, index) => {
        formSelect.addEventListener("click", function()  {
            // let formActive = document.getElementsByClassName("form-select-list show")
            // let formWrapActive = document.getElementsByClassName("form-select active")
            // if(formActive.length != 0) {
            //     formActive[0].classList.toggle("show")
            // }
            // if(formWrapActive.length != 0) {
            //     formWrapActive[0].classList.toggle("active")
            // }
            selectLists[index].classList.toggle("show")
            this.classList.toggle("active")
            currentFormIndex = index
        })
        
    })
    // Select Item
    selectItems.forEach((selectItem, index) => {
        selectItem.addEventListener("click", () => {
            formSelectText[currentFormIndex].innerText = selectItem.innerText
            let selectItemActive = formSelects[currentFormIndex].getElementsByClassName("select-car-item active")
            if(selectItemActive.length != 0) {
                selectItemActive[0].classList.remove("active")
            }
            selectItems[index].classList.add("active")
        })
    })

}

function handleMenuStick(){
    window.onscroll = function() {
        if(document.documentElement.scrollTop > 240) {
            headerContainer.classList.add("stick-menu")
            headerSearch.classList.add("stick-search")
        } else {
            headerContainer.classList.remove("stick-menu")
            headerSearch.classList.remove("stick-search")           
        }
    }
}

function handleSideBar() {
    btnSidebar.addEventListener("click", () => {
        sideBarWrap.classList.toggle("show")
    })
    btnCloseSideBar.addEventListener("click", () => {
        sideBarWrap.classList.toggle("show")
    })
    overlayMobile.addEventListener("click", () => {
        sideBarWrap.classList.toggle("show")
    })
    function handleDropDown(){
        dropDowns.forEach((dropDown, index) => {
            dropDown.addEventListener("click", () => {
                navListChild[index].classList.toggle("show")
                dropDown.classList.toggle("open")
            })
        })
    }
    handleDropDown()
}

function renderCars(){
    const htmls = init.cars
    .filter((car) => car.type === "new-car" || car.type === "used-car" )
    .map((car) =>
        `   
            <div class="col l-4 m-6 c-12 custom-c-12" data-type = "${car.type}">
                <div class="latest-cars-item mb-40">
                    <div class="latest-cars-img">
                        <a href="#" class="latest-cars-link">
                            <img src="${car.img}" alt="img">
                        </a>
                        <a href="#" class="btn btn-book-now">DAT VE</a>
                    </div>
                    <div class="cars-item-content">
                        <div class="cars-item-header">
                            <h5><a href="#">${car.name}</a></h5>
                            <p>${car.desc}</p>
                        </div>
                        <div class="cars-item-meta">
                            <ul>
                                <li>
                                    Khoang cach
                                </li>
                                <li>
                                    <i class="fa-solid fa-road icon-road"></i>
                                    7500 km
                                </li>
                            </ul>
                        </div>
                        <div class="cars-item-bottom">
                            <ul>
                                <li class="rating">
                                    <i class="fa-solid fa-star active"></i>
                                    <i class="fa-solid fa-star active"></i>
                                    <i class="fa-solid fa-star active"></i>
                                    <i class="fa-solid fa-star active"></i>
                                    <i class="fa-solid fa-star active"></i>
                                </li>
                                <li>
                                    <span class="total">Gia ve :</span>
                                    <span class="price">${car.price} VND</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        `
    )
    $(".latest-cars-wrapper > .row.large-gutter.mr-3").innerHTML = htmls.join("")
}

function handleCars(){
    // filter car
    let a = 0
    bntCarsMenu.forEach((menu, index) => {

        menu.addEventListener("click", function() {
            $(".btn-cars-menu.active").classList.remove("active")
            this.classList.add("active")
            var dataType = this.getAttribute("data-type")
            
            const htmls = init.cars
            .filter((car) => car.type == dataType)
            .map((car) =>
            `   
                <div class="col l-4 m-6 c-12 custom-c-12" data-type = "${car.type}">
                    <div class="latest-cars-item mb-40">
                        <div class="latest-cars-img">
                            <a href="#" class="latest-cars-link">
                                <img src="${car.img}" alt="img">
                            </a>
                            <a href="#" class="btn btn-book-now">DAT VE</a>
                        </div>
                        <div class="cars-item-content">
                            <div class="cars-item-header">
                                <h5><a href="#">${car.name}</a></h5>
                                <p>${car.desc}</p>
                            </div>
                            <div class="cars-item-meta">
                                <ul>
                                    <li>
                                        <i class="fa-solid fa-gear icon-gear"></i>
                                        Automatic
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-gas-pump icon-pump"></i>
                                        Diesel
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-road icon-road"></i>
                                        7500 km
                                    </li>
                                </ul>
                            </div>
                            <div class="cars-item-bottom">
                                <ul>
                                    <li class="rating">
                                        <i class="fa-solid fa-star active"></i>
                                        <i class="fa-solid fa-star active"></i>
                                        <i class="fa-solid fa-star active"></i>
                                        <i class="fa-solid fa-star active"></i>
                                        <i class="fa-solid fa-star active"></i>
                                    </li>
                                    <li>
                                        <span class="total">Gia ve :</span>
                                        <span class="price">${car.price} VND</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            `
            )
            $(".latest-cars-wrapper > .row.large-gutter.mr-3").innerHTML = htmls.join("")   
        })
    })
    // All car
    bntCarsMenu[0].addEventListener("click", () => {
        renderCars()
    })
}

function handleScrollTop() {
    btnScrollTop.addEventListener("click", () => {
        window.scrollTo(
            {
                left: 0,
                top: 0,
                behavior: "smooth"
            }
        )
    })
}

function start(){
    handleLogin()
    handleShowCart()
    handleSearch()
    handleSideBar()
    handleSelectForm()
    handleMenuStick()
    renderCars()
    handleCars()
    handleScrollTop()
}
start()
