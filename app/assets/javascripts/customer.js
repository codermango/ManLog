$(function() {
    $("#write-article").hide();
    $("#li-manage-articles").click(function() {
        $("#li-write-article").removeClass("active");
        $("#li-manage-articles").addClass("active");
        $("#manage-articles").show();
        $("#write-article").hide();
    });
    $("#li-write-article").click(function() {
        $("#li-write-article").addClass("active");
        $("#li-manage-articles").removeClass("active");
        $("#manage-articles").hide();
        $("#write-article").show();
    });


});