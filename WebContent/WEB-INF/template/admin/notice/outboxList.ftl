[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="[@spring.url '/resources/images/favicon.png'/]">

    <title>${message("admin.main.title")}</title>
[#include "/admin/include/head.ftl"]
</head>
<body>

<!-- Fixed navbar -->
[#include "/admin/include/navbar.ftl"]
<div id="cl-wrapper" class="fixed-menu">
[#include "/admin/include/sidebar.ftl"]

    <div class="container-fluid" id="pcont">
    <div class="mail-inbox">
      
      <div class="cl-mcont">
            <div class="row">
                <div class="col-md-12">
                    <div class="block-flat">
                        <div class="header">
                            <h3>Outbox</h3>
                        </div>
                        <div class="content">
                            <div class="table-responsive">
							      <table class="table table-bordered" id="datatable2">
							        <thead>
								        <tr>
								        	<th></th>
								        	<th></th>
								        	<th></th>
								        	<th></th>
								            <th>
								            	<div class="filters">
											        <input id="check-all" type="checkbox" name="checkall" />
										        </div>
								            </th>
								        </tr>
							        </thead>
							    </table>
      
  							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div> 

</div>
<!-- Modal -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
           <div class="modal-body">
                <div class="text-center">
                    <h4><i class="fa fa-warning"></i>Warning !</h4>

                    <p>Data will be permanently deleted ?</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                <a href="#" class="btn btn-danger">Yes</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
[#include "/admin/include/foot.ftl"]
<script type="text/javascript">
    $(document).ready(function () {
        //initialize the javascript
        App.init();
    [@flash_message /]
    	
    	var oTable = $('#datatable2').dataTable({
            "processing": true,
            "serverSide": true,
            "bFilter":false,
          	"bSort":false,
            "ajax": {
                url: "[@spring.url '/admin/notice/listOut.jhtml'/]",
                type: "POST"
            },
            
            "columns": [
                { "data": "noticeContactId","visible":false},
                { "data": "admin.username","visible":false},
                { "data": "notice.createDate","visible":false},
                { "data": "notice.content","visible":false},
                { "data": "notice.title" }
            ],
		  "fnCreatedRow": function( nRow, aData, iDataIndex ) {
		      var str='<div id="open_mail" class="mails">'+
				        '<div class="item">'+
				          '<div><input type="checkbox" name="noticeContactId" value="'+aData.noticeContactId+'" class="iCheck"/> </div>'+
				          '<div>'+
				            '<span class="date pull-right"><i class="fa fa-paperclip"></i>'+aData.notice.createDate+'</span>'+
				            '<h4 class="from">'+aData.admin.username+'</h4>'+
				            '<p class="msg">'+aData.notice.title+'</p>'+
				          '</div>'+
				        '</div>'+
				      '</div>';
		        $('td:eq(0)', nRow).html(str);
		    } 
        });
    
        $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue checkbox',
        radioClass: 'icheckbox_square-blue'
      });
      
      $("#check-all").on('ifChanged',function(){
        var checkboxes = $(".mails").find(':checkbox');
        if($(this).is(':checked')) {
            checkboxes.iCheck('check');
        } else {
            checkboxes.iCheck('uncheck');
        }
      });
        
      $('#datatable2').delegate('tbody tr','click', function () {
      		var aData = oTable.fnGetData(this);
            location.href="details.jhtml?id="+aData.noticeContactId;
        } );
        
    });
</script>
</body>
</html>
