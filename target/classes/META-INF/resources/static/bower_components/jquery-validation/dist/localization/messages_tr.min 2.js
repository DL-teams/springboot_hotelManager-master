/*! jQuery Validation Plugin - v1.19.0 - 11/28/2018
 * https://jqueryvalidation.org/
 * Copyright (c) 2018 Jörn Zaefferer; Licensed MIT */
!function(a){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate.min"],a):"object"==typeof module&&module.exports?module.exports=a(require("jquery")):a(jQuery)}(function(a){return a.extend(a.validator.messages,{required:"Bu alanın doldurulması zorunludur.",remote:"Lütfen bu alanı düzeltin.",email:"Lütfen geçerli bir e-posta adresi giriniz.",url:"Lütfen geçerli bir web adresi (URL) giriniz.",date:"Lütfen geçerli bir tarih giriniz.",dateISO:"Lütfen geçerli bir tarih giriniz(ISO formatında)",number:"Lütfen geçerli bir sayı giriniz.",digits:"Lütfen sadece sayısal karakterler giriniz.",creditcard:"Lütfen geçerli bir kredi kartı giriniz.",equalTo:"Lütfen aynı değeri tekrar giriniz.",extension:"Lütfen geçerli uzantıya sahip bir değer giriniz.",maxlength:a.validator.format("Lütfen en fazla {0} karakter uzunluğunda bir değer giriniz."),minlength:a.validator.format("Lütfen en az {0} karakter uzunluğunda bir değer giriniz."),rangelength:a.validator.format("Lütfen en az {0} ve en fazla {1} uzunluğunda bir değer giriniz."),range:a.validator.format("Lütfen {0} ile {1} arasında bir değer giriniz."),max:a.validator.format("Lütfen {0} değerine eşit ya da daha küçük bir değer giriniz."),min:a.validator.format("Lütfen {0} değerine eşit ya da daha büyük bir değer giriniz."),require_from_group:a.validator.format("Lütfen bu alanların en az {0} tanesini doldurunuz.")}),a});