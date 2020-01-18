<%@ include file="/WEB-INF/jsp/init.jsp" %>
<portlet:renderURL var="clickView">
	<portlet:param name="action" value="showForm"/>
</portlet:renderURL>

<style>
.button{
	background: #223740;
    color: white;
    padding: 10px 10px;
    border-radius: 10px;
    border: none;
    display: block;
    width: 100px;
    text-align: center;
    margin: auto;
}
.text-center{
text-align: center;
}
.modal.custom {
    display: none;
}

</style>
<%-- <!-- 
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-4">
			<h1 class="text-center">Fomulario</h1>
			<a class="button" href="<%=clickView.toString()%>" >Ingresa</a>
			<a class="button" onclick="modal()" >Ingresa</a>
		</div>
	</div>
</div>
 --> --%>

	<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>
<!-- Modal -->
<div class="modal custom fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
  

<!-- Cierra seccion -->
	<div class="yui3-skin-sam">
  		<div id="modal"></div>
	</div>
	<script>
	function modal(){
		YUI().use(
				  'aui-modal',
				  function(Y) {
				    var modal = new Y.Modal(
				      {
				        bodyContent: 'Modal body',
				        centered: true,
				        headerContent: '<h3>Modal header</h3>',
				        modal: true,
				        render: '#modal',
				        width: 450
				      }
				    ).render();
				  }
				);
	}
	
	</script>




