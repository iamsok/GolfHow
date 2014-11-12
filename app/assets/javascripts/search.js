$( document ).ready(function() {
  $(".list li").click(function(){
    var query = this.innerText;
    $(".search-input").val(query);
    $(".search-button").click();
  });
});
