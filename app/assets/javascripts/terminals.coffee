$ ->
    #Makes dives draggable
    $( ".drag" ).draggable()
    #Handles object drops
    $("#ObjectLand").droppable
        tolerance: 'fit', accept: '.left'
        drop: (e,ui) ->
            $(this).attr "tracker", ui.draggable.attr("id")
            $( "#Display" ).load( "/generics" + ".html", { id: $("#pickapp").attr("tracker") } )
    #Handles action drops
    $("#ActionLand").droppable
        tolerance: 'fit', accept: '.right'
        drop: (e,ui) ->
            $(this).attr "tracker", ui.draggable.attr("id")
            $( "#Display" ).load( $("#ActionLand").attr("tracker"), { id: $("#pickapp").attr("tracker"), obj: $("#ObjectLand").attr("tracker") } )
    #Handles picking an App
    $('#pickapp').change ->
        optionSelected = $("option:selected", this)
        valueSelected = this.value
        $(this).attr "tracker", valueSelected
        $( "#appdisplay" ).load( "telc", { id: valueSelected })