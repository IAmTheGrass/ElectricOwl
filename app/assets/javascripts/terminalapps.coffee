jQuery ->
	
	$( ".drag" ).draggable();
	$("#ObjectLand2").droppable(tolerance: 'fit', accept: '.left', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$( "#Display" ).load( $("#ObjectLand2").attr("tracker") + "/" + $("#ActionLand2").attr("tracker") + ".html" );
    ));
	$("#ActionLand2").droppable(tolerance: 'fit', accept: '.right', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$( "#Display" ).load( $("#ObjectLand2").attr("tracker") + "/" + $("#ActionLand2").attr("tracker") + ".html" );
    ));