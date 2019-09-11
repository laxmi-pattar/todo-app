$(document).ready(function(){
	enableDragAndDrop()
})

var enableDragAndDrop = function() {
	$( ".draggable" ).draggable();
	$( ".droppable" ).droppable({
		drop: function(event, ui) {
			var card = $(ui.draggable);
			var bucket = $(event.target);
			
		}
	});
}