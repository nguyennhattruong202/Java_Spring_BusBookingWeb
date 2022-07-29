
// Doi tuong Validator
function Validator(options){
    // Lay ra the cha
    function getParent(element, selector){
        while(element.parentElement){
            if(element.parentElement.matches(selector)){
                return element.parentElement
            }
            element = element.parentElement
        }
    }
    var selectorRules = {}

    //Thu hien validate
    function validate(inputElement, rule){
        var errorMessage 
        const errorElement = getParent(inputElement, options.formGroupSelector).querySelector(`${options.error}`)           
        //Lay ra cac rule cua selector
        var rules = selectorRules[rule.selector]
        // lap qua va gap loi la dung
        for(var i = 0; i < rules.length; i++){
            switch(inputElement.type){
                case "radio":
                case "checkbox":
                    errorMessage =  rules[i](
                        formElement.querySelector(rule.selector + ":checked")
                    )
                    break
                default:
                    errorMessage =  rules[i](inputElement.value)
            }
            if(errorMessage) break
        }
        if(errorMessage){
            getParent(inputElement, options.formGroupSelector).classList.add("invalid")
            errorElement.innerText = errorMessage
        }else {
            errorElement.innerText = ""
            getParent(inputElement, options.formGroupSelector).classList.remove("invalid")
        }
        return !!errorMessage // true
        
    }

    //
    var formElement = document.querySelector(options.form)
    if(formElement){
        // submit
        formElement.onsubmit = function(e){
            e.preventDefault()
            var isFormValid = true
            // lap qua tung rules va validate
            options.rules.forEach((rule) => {
                const inputElement = formElement.querySelector(rule.selector)
                var isValid =  validate(inputElement, rule)
                if(isValid){
                    isFormValid =  false
                }
            })
            if(isFormValid){
                if(typeof options.onsubmit === "function"){
                    var enableInputs = formElement.querySelectorAll("[name]") //:not([disable])
                    var formValues = Array.from(enableInputs).reduce((values, input) => {
                        switch(input.type){
                            case "radio":
                                if(input.matches(":checked")){
                                    values[input.name] = input.value
                                }
                                break
                            case "checkbox":
                                if(!Array.isArray(values[input.name]) ) {
                                    values[input.name] = []
                                }
                                if(input.matches(":checked")){
                                    values[input.name].push(input.value)
                                }
                                break
                            case "file":
                                values[input.name] = input.files
                                break
                            default:
                                values[input.name] = input.value
                        }
                        return values
                    }, {})
                    options.onsubmit(formValues)
                }
                else {
                    formElement.submit()
                }
            }
        }
        // Lap qua rule va xu ly
        options.rules.forEach((rule) => {
            //Luu lai cac Rule cho moi input
            if(Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test)
            } else {
                selectorRules[rule.selector] = [rule.test]
            }
            
            const inputElements = formElement.querySelectorAll(rule.selector)
            //Event
            Array.from(inputElements).forEach((inputElement) => {
                if(inputElement){
                    inputElement.onblur = function(){
                        validate(inputElement, rule)
                    } 

                    inputElement.oninput = function(){
                        const errorElement = getParent(inputElement, options.formGroupSelector).querySelector(`${options.error}`)           
                        errorElement.innerText = ""
                        getParent(inputElement, options.formGroupSelector).classList.remove("invalid")
                    } 

                    inputElement.onchange = function(){
                        validate(inputElement, rule)
                    }
                }
            })
            //
        })

    }
}

// Dinh nghia Rules
Validator.isRequired = function(selector, message){
    return {
        selector: selector,
        test: function(value){
            return value ? undefined : message || "Please fill in this field." 
        }
    }
}

Validator.isEmail = function(selector, message){
    return {
        selector: selector,
        test: function(value){
            const regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
            return regex.test(value) ? undefined  : message || "Invalid email address."
        }
    }
}

Validator.isMinLength = function(selector, minLength, message){
    return {
        selector: selector,
        test: function(value){
            return value.length >= minLength ? undefined : message || `Please enter at least  ${minLength} characters.` 
        }
    }
}

Validator.isConfirmed = function(selector, getConfirm, message){
    return {
        selector: selector,
        test: function(value){
            return value === getConfirm()  ? undefined : message || `Please enter correctly.` 
        }
    }
}