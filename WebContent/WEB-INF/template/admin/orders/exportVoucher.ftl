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
[#include "/admin/peerUser/include/head.ftl"]
</head>
<body>

<!-- Fixed navbar -->
<div style="height:100%;">
	 <div id="preview" style="height:600px;margin-top:40px;">
	 	<!-- 放置PDF文件-->
	 </div>
</div>
<script type="text/javascript" src="[@spring.url '/resources/peerUser/js/jquery-1.10.2.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/shop/js/common.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.gritter/js/jquery.gritter.js'/]"></script>

<script type="text/javascript" src="[@spring.url '/resources/js/jquery.nanoscroller/jquery.nanoscroller.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/behaviour/general.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.ui/jquery-ui.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.sparkline/jquery.sparkline.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.easypiechart/jquery.easy-pie-chart.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.nestable/jquery.nestable.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/bootstrap.switch/bootstrap-switch.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.select2/select2.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/skycons/skycons.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/bootstrap.slider/js/bootstrap-slider.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.niftymodals/js/jquery.modalEffects.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/bootstrap.summernote/dist/summernote.min.js'/]"></script>

<script type="text/javascript" src="[@spring.url '/resources/js/jquery.datatables/jquery.datatables.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.datatables/jquery.datatables.zh_CN.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.datatables/bootstrap-adapter/js/datatables.js'/]"></script>

<script src="[@spring.url '/resources/js/jquery.vectormaps/jquery-jvectormap-1.2.2.min.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-us-merc-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-world-mill-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-fr-merc-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-uk-mill-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-us-il-chicago-mill-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-au-mill-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-in-mill-en.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-map.js'/]"></script>
<script src="[@spring.url '/resources/js/jquery.vectormaps/maps/jquery-jvectormap-ca-lcc-en.js'/]"></script>

<script type="text/javascript" src="[@spring.url '/resources/js/jquery.magnific-popup/dist/jquery.magnific-popup.min.js'/]"></script>

<script type="text/javascript" src="[@spring.url '/resources/js/behaviour/voice-commands.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/bootstrap/dist/js/bootstrap.min.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.flot/jquery.flot.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.flot/jquery.flot.pie.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.flot/jquery.flot.resize.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/jquery.flot/jquery.flot.labels.js'/]"></script>

<script type="text/javascript" src="[@spring.url '/resources/js/hogan-3.0.1.js'/]"></script>
<script type="text/javascript" src="[@spring.url '/resources/js/basic/basicForPeer.js'/]"></script>
<script src="[@spring.url '/resources/js/modernizr.js'/]" type="text/javascript"></script>

<script src="[@spring.url '/resources/js/jquery.icheck/icheck.min.js'/]" type="text/javascript"></script><!-- -->

<script type="text/javascript" src="[@spring.url '/resources/js/pdfobject.js'/]"></script>
<script type="text/javascript">
    $(document).ready(function () {
    	App.init();
    	//alert("Test");
    	var success = new PDFObject({ url: "[@spring.url '${destPath}'/]" }).embed("preview");
    });
</script>
</body>
</html>
