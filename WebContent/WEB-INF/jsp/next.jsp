<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IndustryApp Template</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-responsive.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/styles.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/fullcalendar.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div id="in-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<h4>
						<strong>华农有货</strong>
					</h4>
				</div>
			</div>
		</div>
	</div>
	<div id="in-sub-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<ul>
						<li>
							<a href="${pageContext.request.contextPath }/admin/tongji" class="active">
								<i class="batch home"></i>
								<br />
								首页
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/goodsCharge">
								<i class="batch stream"></i>
								<br />
								商品管理
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/IndentCharge">
								<i class="batch forms"></i>
								<br />
								订单管理
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/CustomerCharge">
								<i class="batch users"></i>
								<br />
								用户管理
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">

					<div class="span3"></div>
					<div class="span9">
						<div class="jumbotron">
							<h1>
								今日总营业额：
								<strong class="text-error">￥1000000</strong>
							</h1>
							<h3>
								已成交&nbsp;&nbsp;
								<strong class="text-success">2000</strong>
								&nbsp;&nbsp;&nbsp;单
							</h3>

						</div>
						<h4 class="header" style="font-weight: bold">销售比重</h4>
						<div class="row-fluid">
							<div class="span3 knob">
								<h4>箱包配饰</h4>
								<input type="button" value="${mymap.PackageMainTypeWeight}" data-width="120" data-fgcolor="#14B8D4" data-readonly="true" class="dial" data-kind="bag" />
							</div>
							<div class="span3 knob">
								<h4>服装</h4>
								<input type="button" value="${mymap.ClothMainTypeWeight}" data-width="120" data-fgcolor="#EA494A" data-readonly="true" class="dial" data-kind="cloth" />
							</div>
							<div class="span3 knob">
								<h4>饮食</h4>
								<input type="button" value="${mymap.FoodMainTypeWeight}" data-width="120" data-fgcolor="#FFA93C" data-readonly="true" class="dial" data-kind="food" />
							</div>
							<div class="span3 knob">
								<h4>文体</h4>
								<input type="button" value="${mymap.CultureMainTypeWeight}" data-width="120" data-fgcolor="#333" data-readonly="true" class="dial" data-kind="sport" />
							</div>
						</div>
						<div class="showarea">
							<div class="bag">
								<h4 style="font-weight: bold">箱包配饰类销售细节</h4>
								<div class="stats">
									<div class="row-fluid">
										<div class="span3">
											<div class="stat info">
												<h2>${mymap.ManPackWeight}%</h2>
												<h4>男士箱包</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat danger">
												<h2>${mymap.GirlPackWeight}%</h2>
												<h4>女性箱包</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat warning">
												<h2>${mymap.PurseWeight}%</h2>
												<h4>钱包及小配件</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat inverse">
												<h2>${mymap.CarrierWeight}%</h2>
												<h4>行李箱</h4>
											</div>
										</div>
									</div>
								</div>
								<!--  <div class="row-fluid">
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label">多功能数码双肩包</td>
                <td class="bar-number">666</td>
                <td>
                  <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">牛皮翻盖单肩包</td>
                <td class="bar-number">665</td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">不对称牛皮斜挎包</td>
                <td class="bar-number">584</td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label">翻盖锁扣斜挎包</td>
                <td class="bar-percent">99<span>%</span></td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 拼色锁扣马鞍包</td>
                <td class="bar-percent">98<span>%</span></td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">24寸原创山海经PC铝框拉杆箱</td>
                <td class="bar-percent">90<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      -->


							</div>

							<!--分割线-->
							<div class="cloth">
								<h4 style="font-weight: bold">服装类销售细节</h4>
								<div class="stats">
									<div class="row-fluid">
										<div class="span3">
											<div class="stat info">
												<h2>${mymap.TshirtWeight}%</h2>
												<h4>清爽短袖</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat danger">
												<h2>${mymap.PoloWeight}%</h2>
												<h4>时尚衬衫</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat warning">
												<h2>${mymap.SexySkirtWeight}%</h2>
												<h4>性感长裙</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat inverse">
												<h2>${mymap.FashionPantWeight}%</h2>
												<h4>潮流裤类</h4>
											</div>
										</div>
									</div>
								</div>

								<!-- <div class="row-fluid">
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label"> 女式复古字母T恤衫</td>
                <td class="bar-number">666</td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">女式纯棉百搭圆领T恤</td>
                <td class="bar-number">665</td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 男式120支丝光莫代尔T恤</td>
                <td class="bar-number">584</td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label">  复古绿真丝吊带套装</td>
                <td class="bar-percent">99<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 拼色锁扣马鞍包</td>
                <td class="bar-percent">98<span>%</span></td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">男士商务休闲裤</td>
                <td class="bar-percent">90<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div> -->


							</div>
							<!--分割线-->
							<div class="food">
								<h4 style="font-weight: bold">饮食类销售细节</h4>
								<div class="stats">
									<div class="row-fluid">
										<div class="span3">
											<div class="stat info">
												<h2>${mymap.SockWeight}%</h2>
												<h4>美味零食</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat danger">
												<h2>${mymap.NutWeight}%</h2>
												<h4>水果坚果</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat warning">
												<h2>${mymap.MeatWeight}%</h2>
												<h4>新鲜肉类</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat inverse">
												<h2>${mymap.DrinkWeight}%</h2>
												<h4>饮料酒水</h4>
											</div>
										</div>
									</div>
								</div>
								<!--  <div class="row-fluid">
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label">爱的乐章黑巧克力礼盒 304克</td>
                <td class="bar-number">666</td>
                <td>
                  <div class="progress">
                   <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">韩式海苔糙米脆片</td>
                <td class="bar-number">665</td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">查威克干红葡萄酒年份礼盒套装</td>
                <td class="bar-number">584</td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label">查威克干红葡萄酒年份礼盒套装</td>
                <td class="bar-percent">99<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">  炭火烤肉 150克</td>
                <td class="bar-percent">98<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 猪肉脯 150克</td>
                <td class="bar-percent">90<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div> -->



							</div>
							<!--分割线-->
							<div class="sport">
								<h4 style="font-weight: bold">文体类销售细节</h4>
								<div class="stats">
									<div class="row-fluid">
										<div class="span3">
											<div class="stat info">
												<h2>${mymap.BeautifulWritingWeight}%</h2>
												<h4>精美文具</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat danger">
												<h2>${mymap.OutDoorWeight}%</h2>
												<h4>运动户外</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat warning">
												<h2>${mymap.MusicWeight}%</h2>
												<h4>音乐相关</h4>
											</div>
										</div>
										<div class="span3">
											<div class="stat inverse">
												<h2>${mymap.FilmWeight}%</h2>
												<h4>影视相关</h4>
											</div>
										</div>
									</div>
								</div>
								<!-- <div class="row-fluid">
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label"> 3支装 直杆三角中性笔</td>
                <td class="bar-number">666</td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 3支装 按动式三角中油笔</td>
                <td class="bar-number">665</td>
                <td>
                  <div class="progress">
                   <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label">健身瑜伽垫</td>
                <td class="bar-number">584</td>
                <td>
                  <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
        <div class="span6">
          <div class="widget">
            <table style="width:100%">
              <tr>
                <td class="bar-label">复仇者联盟 英雄徽标 钥匙链挂件 漫威</td>
                <td class="bar-percent">99<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 瑞鸣收藏版CD-摇篮曲EP</td>
                <td class="bar-percent">98<span>%</span></td>
                <td>
                  <div class="progress">
                   <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="bar-label"> 瑞鸣收藏版CD-月儿弯弯照九州</td>
                <td class="bar-percent">90<span>%</span></td>
                <td>
                  <div class="progress">
                     <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div> -->



							</div>
							<!--分割线-->
						</div>
						<hr />
						<h4 style="font-weight: bold">历史之最</h4>
						<div class="panel">
							<div class="top primary">
								<i class="batch-big b-database"></i>
								<h6>历史销量最高</h6>
							</div>
							<div class="bottom">
								<h2>${mymap.highestgoods.sellCount}</h2>
								<h6>${mymap.highestgoods.goodsName}</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top warning">
								<i class="batch-big b-flag"></i>
								<h6>土豪成交额最多</h6>
							</div>
							<div class="bottom">
								<h2>${mymap.customerAndPrice.customerName}</h2>
								<h6>${mymap.customerAndPrice.finaltotalPrice}</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top danger">
								<i class="batch-big b-comment"></i>
								<h6>单日营业额最高</h6>
							</div>
							<div class="bottom">
								<h2>596000</h2>
								<h6>2018-8-03</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top">
								<i class="batch-big b-alarm"></i>
								<h6>单日成交数最多</h6>
							</div>
							<div class="bottom">
								<h2>1300</h2>
								<h6>2018-8-03</h6>
							</div>
						</div>
						<div class="panel">
							<div class="top purple">
								<i class="batch-big b-wifi"></i>
								<h6>最受欢迎种类</h6>
							</div>
							<div class="bottom">
								<h2>800000</h2>
								<h6>男士箱包</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				(function() {
					var delay;

					delay = function(ms, func) {
						return setTimeout(func, ms);
					};

					/*  toastr.options = {
					 positionClass: 'toast-bottom-left'
					 };

					 delay(1000, function() {
					 return toastr.success('Have fun storming the castle!', 'Miracle Max Says');
					 });

					 delay(1500, function() {
					 return toastr.warning('My name is Inigo Montoya. You Killed my father, prepare to die!');
					 });

					 delay(2000, function() {
					 return toastr.error('I do not think that word means what you think it means.', 'Inconceivable!');
					 });*/

				}).call(this);
			</script>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="row">
				<div class="span12">
					<p class="pull-right">华农有货后台管理系统</p>
					<p>&copy; 2018 FreelanceLeague</p>
				</div>
			</div>
		</div>
	</footer>

	<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.knob.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.tablesorter.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.peity.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/fullcalendar.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/gcal.js"></script>
	<script src="${pageContext.request.contextPath }/js/setup.js"></script>
	<script>
		$(document).ready(function() {
			$(".span3.knob").click(function() {
				var kind = $(this).find("input").attr("data-kind");
				$("." + kind).fadeIn("slow").siblings().fadeOut("fast");
			});
		});
	</script>
</body>

<!-- <script src="js/d3-setup.js"></script><script>protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://'; address = protocol + window.location.host + window.location.pathname + '/ws'; socket = new WebSocket(address);
socket.onmessage = function(msg) { msg.data == 'reload' && window.location.reload() }</script>-->
</html>