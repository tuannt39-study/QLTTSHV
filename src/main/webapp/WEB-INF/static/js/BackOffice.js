
$("#form-add-new").hide();
$(".btn-add-new").click(function(){
    $("#form-add-new").show();
});
$(".cancel").click(function(){
    $("#form-add-new").hide();
});
/**
 * Created by minht on 2/7/2017.
 */
function CenterBlock(div1, div2){
    var w1 = $("#"+div1+"").width();
    var w2 = $("."+div2+"").width();
    var margin = (w1-w2)/2;
    $("."+div2+"").css("margin-left",margin);
}