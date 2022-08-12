function closeLoading() {
    $("#loadingDiv").fadeOut("normal", function () {
        $(this).remove();
    });
}
//延迟加载
var no;
$.parser.onComplete = function () {
    if (no) clearTimeout(no);
    no = setTimeout(closeLoading, 50);
}