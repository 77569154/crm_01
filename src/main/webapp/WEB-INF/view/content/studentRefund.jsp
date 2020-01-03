<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="gb2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="res/css/admin/departmentManage.css">
<link rel="stylesheet" href="res/css/admin/addressManage.css">
<link rel="stylesheet" href="res/css/admin/recConfiguration.css">
<link rel="stylesheet" href="res/css/admin/postManage.css">

<div class="content layui-col-xs12 layui-col-sm12 layui-col-md12 layui-col-lg12">
    <div class="layui-card">
        <input type="hidden" value="${staff.staff_id}" id="staffId"/>
        <div class="layui-card-header"><h2 class="div-title">ѧ���˿μ�¼</h2></div>
        <div class="layui-card-body">

            <div id='orderinit-content' style="display: none">
                <!-- ���������� -->
                <div class="map-tools">
                    <button class="layui-btn layui-btn-sm layui-btn-normal" id='back'>
                        <i class="layui-icon">&#xe65c;</i> ����
                    </button>
                </div>
                <form class="layui-form" id='update-orderinit-form' accept-charset="UTF-8" >
                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md12 layui-col-lg12">
                        <div class="layui-form-item">
                            <label class="layui-form-label">ѧ������</label>
                            <div class="layui-input-block">
                                <input type="text" name="student_name" id='student_name' required
                                       lay-verify="required" placeholder="������" readonly="readonly"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item">
                            <label class="layui-form-label">����У��</label>
                            <div class="layui-input-block">
                                <input type="text" name="campus_name" id='campus_name' required
                                       lay-verify="required" placeholder="������" readonly="readonly"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">���˿γ�</label>
                            <div class="layui-input-block">
                                <input type="text" name="course_name" id="course_name" required
                                       lay-verify="required" placeholder="������" readonly="readonly"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>


                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">�γ�ԭ��</label>
                            <div class="layui-input-block">
                                <input type="text" name="actual_price" id="actual_price" required
                                       readonly="readonly" lay-verify="required" placeholder="������"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">�ɽ��۸�</label>
                            <div class="layui-input-block">
                                <input type="text" name="deal_price" id="deal_price" required
                                       readonly="readonly" lay-verify="required" placeholder="������"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>


                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">��������</label>
                            <div class="layui-input-block">
                                <input type="text" name="order_course_num" id="order_course_num" required
                                       readonly="readonly" lay-verify="required" placeholder="������"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">ʣ��δ�</label>
                            <div class="layui-input-block">
                                <input type="text" name="remain_course_num" id="remain_course_num" required
                                       readonly="readonly" lay-verify="required" placeholder="������"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>



                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">�ɽ�����</label>
                            <div class="layui-input-block">
                                <input type="text" name="deal_unit_price" id="deal_unit_price" required
                                       readonly="readonly" lay-verify="required" placeholder="������"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                    <div
                            class="content layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label" style="color: red">Ӧ�����</label>
                            <div class="layui-input-block">
                                <input type="text" name="real_balance" id="real_balance" required
                                       readonly="readonly" lay-verify="required" placeholder="������"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item my-form-item" id="submit-button">
                        <div class="layui-btn-group">
                            <button class="layui-btn my-button" lay-submit
                                    lay-filter="finishRefund" id="finishRefund">����˻����
                            </button>

                        </div>
                    </div>



                </form>
            </div>
        </div>

        <div id='table'>
            <!-- ���������� -->
            <div class="content layui-col-xs12 layui-col-sm12 layui-col-md12 layui-col-lg12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="map-tools" style="display: flex;">

                            <div class="search-filter-main" >
                                <i id='filter' class="layui-icon">&#xe6b2;</i>
                                <div id='filter-ul-div' class="filter-ul-div">
                                    <form class="layui-form">
                                        <ul id='filter-ul'>
                                            <li><input type="checkbox" value="student_name"
                                                       title="ѧ������" lay-skin="primary" lay-filter='filter' checked></li>
                                            <li><input type="checkbox" value="course_name"
                                                       title="����γ�" lay-skin="primary" lay-filter='filter' checked></li>
                                            <li><input type="checkbox" value="update_loadtime"
                                                       title="�˿�ʱ��" lay-skin="primary" lay-filter='filter' checked></li>

                                            <hr>
                                            <li id='close-filter' style="cursor: pointer;"><i
                                                    class="layui-icon">&#x1006;</i>�ر�
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </div>

                            <div class="map-search">
                                <div id="r-result">
                                    <input type="text" id="serach-address-key" size="18"
                                           placeholder="����"/><i id='search-i' class="layui-icon"
                                                                style="color: #fff;">&#xe615;</i>
                                </div>
                                <div id="searchResultPanel"></div>
                            </div>


                        </div>


                    </div>
                </div>
            </div>
             <!--  ���������� end -->
            <div class="content layui-col-xs12 layui-col-sm12 layui-col-md12 layui-col-lg12">
                <div class="layui-card">
                    <div class="layui-card-body">
                            <table class="layui-hide" id="post" lay-filter="post"></table>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<script type="text/html" id="getMoreMessage">
    <a class="layui-btn layui-btn-xs" lay-event="edit">�鿴/�˿�</a>
</script>

<script type="text/javascript" src="res/js/admin/studentRefund.js"></script>
</html>