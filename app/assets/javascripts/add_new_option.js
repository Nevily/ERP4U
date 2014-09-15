jQuery(function(){
  $('.external_option').change(function() {
    if(this.selectedIndex != this.options.length - 1) {
        return;
    }
    
    var new_name = prompt('Please enter a new option');
    if(!new_name.length) {
        return;
    }

    function capitaliseFirstLetter(string){
      return string.charAt(0).toUpperCase() + string.slice(1);
    }

    $(this).append("<option value=" + '"' + new_name + '"' + " selected>" + capitaliseFirstLetter(new_name) + "</option>");
   });
});