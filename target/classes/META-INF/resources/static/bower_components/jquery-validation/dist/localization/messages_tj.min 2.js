/*! jQuery Validation Plugin - v1.19.0 - 11/28/2018
 * https://jqueryvalidation.org/
 * Copyright (c) 2018 Jörn Zaefferer; Licensed MIT */
!function(a){"function"==typeof define&&define.amd?define(["jquery","../jquery.validate.min"],a):"object"==typeof module&&module.exports?module.exports=a(require("jquery")):a(jQuery)}(function(a){return a.extend(a.validator.messages,{required:"Ворид кардани ин филд маҷбури аст.",remote:"Илтимос, маълумоти саҳеҳ ворид кунед.",email:"Илтимос, почтаи электронии саҳеҳ ворид кунед.",url:"Илтимос, URL адреси саҳеҳ ворид кунед.",date:"Илтимос, таърихи саҳеҳ ворид кунед.",dateISO:"Илтимос, таърихи саҳеҳи (ISO)ӣ ворид кунед.",number:"Илтимос, рақамҳои саҳеҳ ворид кунед.",digits:"Илтимос, танҳо рақам ворид кунед.",creditcard:"Илтимос, кредит карди саҳеҳ ворид кунед.",equalTo:"Илтимос, миқдори баробар ворид кунед.",extension:"Илтимос, қофияи файлро дуруст интихоб кунед",maxlength:a.validator.format("Илтимос, бештар аз {0} рамз ворид накунед."),minlength:a.validator.format("Илтимос, камтар аз {0} рамз ворид накунед."),rangelength:a.validator.format("Илтимос, камтар аз {0} ва зиёда аз {1} рамз ворид кунед."),range:a.validator.format("Илтимос, аз {0} то {1} рақам зиёд ворид кунед."),max:a.validator.format("Илтимос, бештар аз {0} рақам ворид накунед."),min:a.validator.format("Илтимос, камтар аз {0} рақам ворид накунед.")}),a});