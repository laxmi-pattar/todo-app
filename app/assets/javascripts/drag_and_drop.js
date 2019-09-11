$(document).ready(function(){
	enableDragAndDrop()
});

var enableDragAndDrop = function() {
	$( ".draggable" ).draggable();
	$( ".droppable" ).droppable({
		drop: function(event, ui) {
			var card = $(ui.draggable).data('task-id');
			var bucket = $(this).attr('id');

			$.ajax({
				method: 'put',
				url: '/tasks/' + card,
				dataType: 'script',
				data: {task: { status: bucket} }

			})
		},

		over: function( event, ui ) {
			console.log('over')
		}
	});
}

