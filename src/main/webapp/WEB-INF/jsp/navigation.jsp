<%@ page pageEncoding="euc-kr"%>
<script>
function logout(){
	alert("�α׾ƿ� �Ǿ����ϴ�. \n�����մϴ�.");
	location.href = "/logout";
}

</script>

		<!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0; background: rgb(255, 208, 18)">
            <div class="navbar-header">
            	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/" style="color:#fff" > Cloud EnClean.com </a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-top-links navbar-right">
                
                 <li class="navbar-brand"><i class="fa fa-user fa-fw"></i> <strong>${loginName} ��</strong></li>
                  
                <!-- /.dropdown -->
            </ul>



            <div class="navbar-default sidebar" role="navigation" data-placement="right" style="background: #C85A32 ; color:#fff" >
                <div class="sidebar-nav navbar-collapse" >
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="/"><i class="fa fa-home" ></i> ��ũ��ī��ȳ�  </a>
                        </li>
                        <li>
                            <a href="userDetail"><i class="fa fa-user" ></i> ȸ��������ȸ </a>
                        </li>
                        <li>
                            <a href="/oilDealInfo"><i class="fa fa-bar-chart-o"></i> ����������ȸ </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-map-marker"></i> ������ ���� <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/station"><i class="fa fa-search"></i> ������ã�� </a>
                                </li>
                                <li>
                                    <a href="/favor"><i class="fa fa-heart "></i> �ܰ������� ���� </a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="javascript:logout();"><i class="fa fa-power-off"></i> Logout </a>
                        </li>                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>