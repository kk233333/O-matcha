<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
<script type="text/javascript" src="../wangwei/js/ssxld.js" charset="UTF-8"></script>
<link rel="stylesheet" href="../wangwei/css/bootstrap.css" type="text/css" media="all">
<link rel="stylesheet" href="../wangwei/css/Userlist.css" type="text/css">
<link href="../wangwei/bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="../wangwei/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>
<body>

<div class="container" id="ground">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form role="form" id="form" action="userlist" method="post" >
				<div class="form-group">
					 <label for="name">昵称</label><input type="text" class="form-control" id="name" name="Nickname"/>
				</div>
				<div class="form-group">
					 <label for="sex">性别</label><select class="form-control" id="sex" name="usex">
					 <option>保密</option>
					 <option>男</option>
					 <option>女</option>
					 </select>
				</div>
				<div class="form-group">
                <label class="control-label">生日</label>
                <div class="controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" type="text" value="" readonly="" name="birthday">
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
				</div>
				<div class="form-group">
					 <label for="Adress">地址</label>
					 <select class="form-control" id="cmbProvince" name="cmbProvince"></select><br/> 
					 <select class="form-control" id="cmbCity" name="cmbCity" ></select>  <br/>
					 <select class="form-control" id="cmbArea" name="cmbArea" ></select>  <br/>
					 <input class="form-control" type="text" value="详细地址" onblur="if(this.value=''){this.value='详细地址'}" onfocus="if(this.value='详细地址'){this.value='';this.style.color='#ff0000'}" name="uadress"/>
				</div>
				
				 <input type="submit" class="btn btn-default" value="提交信息"/>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript" src="../wangwei/css/rili/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../wangwei/css/rili/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../wangwei/css/rili/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../wangwei/css/rili/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
$('.form_date').datetimepicker({
    language:  'fr',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});
</script>


<script type="text/javascript">  
addressInit('cmbProvince', 'cmbCity', 'cmbArea');  
</script>

<div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 457px; z-index: 1010; display: none; top: 111px;">
	<div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed">
	<thead>
	 <tr>
	 <th class="prev" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-left"></i>
	  </th>
	  <th colspan="5" class="switch">16 September 1979</th>
	  <th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr></thead>
	  <tbody><tr><td colspan="7"><fieldset class="minute"><legend>AM</legend><span class="minute">5:00</span>
	  <span class="minute">5:05</span><span class="minute">5:10</span><span class="minute">5:15</span>
	  <span class="minute">5:20</span><span class="minute active">5:25</span><span class="minute">5:30</span>
	  <span class="minute">5:35</span><span class="minute">5:40</span><span class="minute">5:45</span>
	  <span class="minute">5:50</span><span class="minute">5:55</span></fieldset></td></tr></tbody>
	  <tfoot><tr><th colspan="7" class="today">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div>
	  <div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed">
	  <thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">16 September 1979</th><th class="next" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><fieldset class="hour"><legend>AM</legend>
	  <span class="hour hour_am">12</span><span class="hour hour_am">1</span><span class="hour hour_am">2</span><span class="hour hour_am">3</span>
	  <span class="hour hour_am">4</span><span class="hour active hour_am">5</span><span class="hour hour_am">6</span><span class="hour hour_am">7</span>
	  <span class="hour hour_am">8</span><span class="hour hour_am">9</span><span class="hour hour_am">10</span><span class="hour hour_am">11</span></fieldset>
	  <fieldset class="hour"><legend>PM</legend><span class="hour hour_pm">12</span><span class="hour hour_pm">1</span><span class="hour hour_pm">2</span>
	  <span class="hour hour_pm">3</span><span class="hour hour_pm">4</span><span class="hour hour_pm">5</span><span class="hour hour_pm">6</span>
	  <span class="hour hour_pm">7</span><span class="hour hour_pm">8</span><span class="hour hour_pm">9</span><span class="hour hour_pm">10</span>
	  <span class="hour hour_pm">11</span></fieldset></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr>
	  <tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;">
	  <table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">September 1979</th><th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr>
	  <tr><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th>
	  <th class="dow">Su</th></tr></thead><tbody><tr><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td>
	  <td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td></tr><tr><td class="day">3</td>
	  <td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td></tr>
	  <tr><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td>
	  <td class="day active">16</td></tr><tr><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td>
	  <td class="day">22</td><td class="day">23</td></tr><tr><td class="day">24</td><td class="day">25</td><td class="day">26</td>
	  <td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td></tr><tr><td class="day new">1</td>
	  <td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td>
	  <td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div>
	  <div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">1979</th><th class="next" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span>
	  <span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span>
	  <span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month active">Sep</span>
	  <span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr>
	  <th colspan="7" class="today">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div>
	  <div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">1970-1979</th><th class="next" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="year ">1969</span><span class="year">1970</span>
	  <span class="year">1971</span><span class="year">1972</span><span class="year">1973</span><span class="year">1974</span><span class="year">1975</span>
	  <span class="year">1976</span><span class="year">1977</span><span class="year">1978</span><span class="year active">1979</span><span class="year ">1980</span>
	  </td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div></div>
	  <div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 684px; z-index: 1020;"><div class="datetimepicker-minutes" style="display: none;">
	  <table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">3 Juillet 2018</th><th class="next" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="minute">11:00</span>
	  <span class="minute">11:05</span><span class="minute active">11:10</span><span class="minute">11:15</span>
	  <span class="minute">11:20</span><span class="minute">11:25</span><span class="minute">11:30</span>
	  <span class="minute">11:35</span><span class="minute">11:40</span><span class="minute">11:45</span>
	  <span class="minute">11:50</span><span class="minute">11:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Aujourd'hui</th>
	  </tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div>
	  <div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr>
	  <th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">3 Juillet 2018</th>
	  <th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7">
	  <span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span>
	  <span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span>
	  <span class="hour">10:00</span><span class="hour active">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span>
	  <span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span>
	  <span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span>
	  <span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Aujourd'hui</th>
	  </tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div>
	  <div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr>
	  <th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">Juillet 2018</th>
	  <th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr><tr><th class="dow">L</th>
	  <th class="dow">Ma</th><th class="dow">Me</th><th class="dow">J</th><th class="dow">V</th><th class="dow">S</th><th class="dow">D</th></tr></thead>
	  <tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td>
	  <td class="day old">30</td><td class="day">1</td></tr><tr><td class="day">2</td><td class="day today active">3</td><td class="day">4</td>
	  <td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td>
	  <td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td>
	  <td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td></tr><tr>
	  <td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td>
	  <td class="day">29</td></tr><tr><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td>
	  <td class="day new">3</td><td class="day new">4</td><td class="day new">5</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Aujourd'hui</th>
	  </tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div>
	  <div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr>
	  <th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">2018</th><th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr></thead>
	  <tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Fev</span><span class="month">Mar</span>
	  <span class="month">Avr</span><span class="month">Mai</span><span class="month">Jui</span><span class="month active">Jul</span>
	  <span class="month">Aou</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span>
	  <span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Aujourd'hui</th></tr><tr>
	  <th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;">
	  <table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th>
	  </tr></thead><tbody><tr><td colspan="7"><span class="year ">2009</span><span class="year">2010</span><span class="year">2011</span>
	  <span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span>
	  <span class="year">2017</span><span class="year active">2018</span><span class="year">2019</span><span class="year ">2020</span></td></tr></tbody>
	  <tfoot><tr><th colspan="7" class="today">Aujourd'hui</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table>
	  </div></div><div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 684px; z-index: 1030;">
	  <div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">3 Juillet 2018</th><th class="next" style="visibility: visible;">
	  <i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7"><span class="minute">11:00</span>
	  <span class="minute">11:05</span><span class="minute active">11:10</span><span class="minute">11:15</span><span class="minute">11:20</span>
	  <span class="minute">11:25</span><span class="minute">11:30</span><span class="minute">11:35</span><span class="minute">11:40</span>
	  <span class="minute">11:45</span><span class="minute">11:50</span><span class="minute">11:55</span></td></tr></tbody><tfoot><tr>
	  <th colspan="7" class="today">Aujourd'hui</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot>
	  </table></div><div class="datetimepicker-hours" style="display: block;"><table class=" table-condensed"><thead><tr>
	  <th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">3 Juillet 2018</th>
	  <th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7">
	  <span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span>
	  <span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span>
	  <span class="hour">10:00</span><span class="hour active">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span>
	  <span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span>
	  <span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span>
	  <span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Aujourd'hui</th></tr><tr>
	  <th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: none;">
	  <table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">Juillet 2018</th><th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr>
	  <tr><th class="dow">L</th><th class="dow">Ma</th><th class="dow">Me</th><th class="dow">J</th><th class="dow">V</th><th class="dow">S</th>
	  <th class="dow">D</th></tr></thead><tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td>
	  <td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day">1</td></tr><tr><td class="day">2</td>
	  <td class="day today active">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td>
	  <td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td>
	  <td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td><td class="day">17</td>
	  <td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td></tr><tr>
	  <td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td>
	  <td class="day">29</td></tr><tr><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td>
	  <td class="day new">3</td><td class="day new">4</td><td class="day new">5</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Aujourd'hui</th></tr>
	  <tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;">
	  <table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th>
	  <th colspan="5" class="switch">2018</th><th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr></thead>
	  <tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Fev</span><span class="month">Mar</span><span class="month">Avr</span>
	  <span class="month">Mai</span><span class="month">Jui</span><span class="month active">Jul</span><span class="month">Aou</span>
	  <span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody>
	  <tfoot><tr><th colspan="7" class="today">Aujourd'hui</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot>
	  </table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr>
	  <th class="prev" style="visibility: visible;"><i class="glyphicon icon-arrow-left"></i></th><th colspan="5" class="switch">2010-2019</th>
	  <th class="next" style="visibility: visible;"><i class="glyphicon icon-arrow-right"></i></th></tr></thead><tbody><tr><td colspan="7">
	  <span class="year ">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span>
	  <span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span>
	  <span class="year active">2018</span><span class="year">2019</span><span class="year ">2020</span></td></tr></tbody><tfoot><tr>
	  <th colspan="7" class="today">Aujourd'hui</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div></div>
	
</body>
</html>