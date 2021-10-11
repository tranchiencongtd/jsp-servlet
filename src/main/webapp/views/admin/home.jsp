<%@ include file="/common/listLib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
					</li>
					<li class="active">Dashboard</li>
				</ul>
				<!-- /.breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="ace-icon fa fa-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- /.nav-search -->
			</div>

			<div class="page-content">
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
						id="ace-settings-btn">
						<i class="ace-icon fa fa-cog bigger-130"></i>
					</div>

					<div class="ace-settings-box clearfix" id="ace-settings-box">
						<div class="pull-left width-50">
							<div class="ace-settings-item">
								<div class="pull-left">
									<select id="skin-colorpicker" class="hide">
										<option data-skin="no-skin" value="#438EB9">#438EB9</option>
										<option data-skin="skin-1" value="#222A2D">#222A2D</option>
										<option data-skin="skin-2" value="#C6487E">#C6487E</option>
										<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
									</select>
								</div>
								<span>&nbsp; Choose Skin</span>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-navbar" /> <label class="lbl"
									for="ace-settings-navbar"> Fixed Navbar</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-sidebar" /> <label class="lbl"
									for="ace-settings-sidebar"> Fixed Sidebar</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-breadcrumbs" /> <label class="lbl"
									for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-rtl" /> <label class="lbl"
									for="ace-settings-rtl"> Right To Left (rtl)</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-add-container" /> <label class="lbl"
									for="ace-settings-add-container"> Inside <b>.container</b>
								</label>
							</div>
						</div>
						<!-- /.pull-left -->

						<div class="pull-left width-50">
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-hover" /> <label class="lbl"
									for="ace-settings-hover"> Submenu on Hover</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-compact" /> <label class="lbl"
									for="ace-settings-compact"> Compact Sidebar</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2"
									id="ace-settings-highlight" /> <label class="lbl"
									for="ace-settings-highlight"> Alt. Active Item</label>
							</div>
						</div>
						<!-- /.pull-left -->
					</div>
					<!-- /.ace-settings-box -->
				</div>
				<!-- /.ace-settings-container -->

				<div class="page-header">
					<h1>
						Dashboard <small> <i
							class="ace-icon fa fa-angle-double-right"></i> overview &amp;
							stats
						</small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="alert alert-block alert-success">
							<button type="button" class="close" data-dismiss="alert">
								<i class="ace-icon fa fa-times"></i>
							</button>

							<i class="ace-icon fa fa-check green"></i> Welcome to <strong
								class="green"> Ace <small>(v1.3.3)</small>
							</strong>, легкий, много-функциональный и простой в использовании шаблон
							для админки на bootstrap 3.3. Загрузить исходники с <a
								href="https://github.com/bopoda/ace">github</a> (with minified
							ace js files).
						</div>

						<div class="row">
							<div class="space-6"></div>

							<div class="col-sm-7 infobox-container">
								<div class="infobox infobox-green">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-comments"></i>
									</div>

									<div class="infobox-data">
										<span class="infobox-data-number">32</span>
										<div class="infobox-content">comments + 2 reviews</div>
									</div>

									<div class="stat stat-success">8%</div>
								</div>

								<div class="infobox infobox-blue">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-twitter"></i>
									</div>

									<div class="infobox-data">
										<span class="infobox-data-number">11</span>
										<div class="infobox-content">new followers</div>
									</div>

									<div class="badge badge-success">
										+32% <i class="ace-icon fa fa-arrow-up"></i>
									</div>
								</div>

								<div class="infobox infobox-pink">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-shopping-cart"></i>
									</div>

									<div class="infobox-data">
										<span class="infobox-data-number">8</span>
										<div class="infobox-content">new orders</div>
									</div>
									<div class="stat stat-important">4%</div>
								</div>

								<div class="infobox infobox-red">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-flask"></i>
									</div>

									<div class="infobox-data">
										<span class="infobox-data-number">7</span>
										<div class="infobox-content">experiments</div>
									</div>
								</div>

								<div class="infobox infobox-orange2">
									<div class="infobox-chart">
										<span class="sparkline"
											data-values="196,128,202,177,154,94,100,170,224"></span>
									</div>

									<div class="infobox-data">
										<span class="infobox-data-number">6,251</span>
										<div class="infobox-content">pageviews</div>
									</div>

									<div class="badge badge-success">
										7.2% <i class="ace-icon fa fa-arrow-up"></i>
									</div>
								</div>

								<div class="infobox infobox-blue2">
									<div class="infobox-progress">
										<div class="easy-pie-chart percentage" data-percent="42"
											data-size="46">
											<span class="percent">42</span>%
										</div>
									</div>

									<div class="infobox-data">
										<span class="infobox-text">traffic used</span>

										<div class="infobox-content">
											<span class="bigger-110">~</span> 58GB remaining
										</div>
									</div>
								</div>

								<div class="space-6"></div>

								<div class="infobox infobox-green infobox-small infobox-dark">
									<div class="infobox-progress">
										<div class="easy-pie-chart percentage" data-percent="61"
											data-size="39">
											<span class="percent">61</span>%
										</div>
									</div>

									<div class="infobox-data">
										<div class="infobox-content">Task</div>
										<div class="infobox-content">Completion</div>
									</div>
								</div>

								<div class="infobox infobox-blue infobox-small infobox-dark">
									<div class="infobox-chart">
										<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
									</div>

									<div class="infobox-data">
										<div class="infobox-content">Earnings</div>
										<div class="infobox-content">$32,000</div>
									</div>
								</div>

								<div class="infobox infobox-grey infobox-small infobox-dark">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-download"></i>
									</div>

									<div class="infobox-data">
										<div class="infobox-content">Downloads</div>
										<div class="infobox-content">1,205</div>
									</div>
								</div>
							</div>

							<div class="vspace-12-sm"></div>

							<div class="col-sm-5">
								<div class="widget-box">
									<div
										class="widget-header widget-header-flat widget-header-small">
										<h5 class="widget-title">
											<i class="ace-icon fa fa-signal"></i> Traffic Sources
										</h5>

										<div class="widget-toolbar no-border">
											<div class="inline dropdown-hover">
												<button class="btn btn-minier btn-primary">
													This Week <i
														class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
												</button>

												<ul
													class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
													<li class="active"><a href="#" class="blue"> <i
															class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
															This Week
													</a></li>

													<li><a href="#"> <i
															class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
															Last Week
													</a></li>

													<li><a href="#"> <i
															class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
															This Month
													</a></li>

													<li><a href="#"> <i
															class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
															Last Month
													</a></li>
												</ul>
											</div>
										</div>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div id="piechart-placeholder"></div>

											<div class="hr hr8 hr-double"></div>

											<div class="clearfix">
												<div class="grid3">
													<span class="grey"> <i
														class="ace-icon fa fa-facebook-square fa-2x blue"></i>
														&nbsp; likes
													</span>
													<h4 class="bigger pull-right">1,255</h4>
												</div>

												<div class="grid3">
													<span class="grey"> <i
														class="ace-icon fa fa-twitter-square fa-2x purple"></i>
														&nbsp; tweets
													</span>
													<h4 class="bigger pull-right">941</h4>
												</div>

												<div class="grid3">
													<span class="grey"> <i
														class="ace-icon fa fa-pinterest-square fa-2x red"></i>
														&nbsp; pins
													</span>
													<h4 class="bigger pull-right">1,050</h4>
												</div>
											</div>
										</div>
										<!-- /.widget-main -->
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.widget-box -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<div class="hr hr32 hr-dotted"></div>

						

						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->

</body>
</html>