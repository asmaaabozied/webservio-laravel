<!-- DataTables -->
<script type="text/javascript" src="{{asset('vendor/datatables/jquery.dataTables.min.js')}}"></script>
<script type="text/javascript" src="{{asset('vendor/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script type="text/javascript" src="{{asset('vendor/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
<script type="text/javascript" src="{{asset('vendor/datatables-buttons/js/buttons.colVis.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables/buttons.server-side.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-colreorder/js/dataTables.colReorder.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-rowgroup/js/dataTables.rowGroup.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-rowgroup/js/rowGroup.bootstrap4.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-fixedcolumns/js/dataTables.fixedColumns.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-fixedcolumns/js/fixedColumns.bootstrap4.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script type="text/javascript">
    function initICheck() {
        $('input[type="checkbox"].permission').each(function (event) {
            var checkbox = $(this);
            var roleName = $(this).data('role-name');
            var permission = $(this).data('permission');
            if (permission.roles.indexOf(roleName) > -1) {
                checkbox.attr("checked", "checked");
            }
        });
        $('div.icheck-permission').off('click');
        $('div.icheck-permission').click(function () {
            var url = "";
            var checkbox = $(this).find('input[type="checkbox"]');
            console.log(checkbox);
            var roleId = checkbox.data('role-id');
            var permission = checkbox.data('permission');

            if (checkbox.attr('checked')) {
                checkbox.removeAttr('checked');
                url = "{{url('permissions/revoke-permission-to-role')}}";
            } else {
                checkbox.attr("checked", "checked");
                url = "{{url('permissions/give-permission-to-role')}}";
            }
            $.ajax({
                method: "POST",
                url: url,
                data: {_token: "{{csrf_token()}}", roleId: roleId, permission: permission.permission}
            })
                .done(function (msg) {

                });

        });
    }

    function initColVis(_this, column) {
        if (column.visible()) {
            _this.addClass('text-bold');
            _this.find('i.fas').removeClass('text-light');
        } else {
            _this.removeClass('text-bold');
            _this.find('i.fas').addClass('text-light');
        }
    }

    function renderButtons(tableId) {

        var dtable = $("#" + tableId).DataTable();
        $('a#refreshDatatable').on('click', function () {
            dtable.button('4').trigger();
        });
        $('a#exportCsvDatatable').on('click', function () {
            dtable.button('1-0').trigger();
        });
        $('a#exportExcelDatatable').on('click', function () {
            dtable.button('1-1').trigger();
        });

        $('a#exportPdfDatatable').on('click', function () {
            dtable.button('1-2').trigger();
        });
        $('a#printDatatable').on('click', function () {
            dtable.button('2').trigger();
            //window.open(window.location.href);
        });
        $('a#resetDatatable').on('click', function () {
            dtable.button('3').trigger();
            $('.dataTables_filter input').val('');
        });
        $('li#colVisDatatable').on('hide.bs.dropdown', function (e) {
            var target = $(e.target);
            if (target.hasClass("keepopen") || target.parents(".keepopen").length) {
                return false; // returning false should stop the dropdown from hiding.
            } else {
                return true;
            }
        }).find('.dropdown-toggle').on('click', function (e) {
            var target = $(e.target);
            target.parents('li#colVisDatatable').removeClass("keepopen");
        });
        $('li#colVisDatatable .dropdown-item').on('click', function (e) {
            e.preventDefault();
            var target = $(e.target);
            target.parents('li#colVisDatatable').addClass("keepopen");
            // Get the column API object
            var column = dtable.column($(this).data('column'));
            // Toggle the visibility
            column.visible(!column.visible());
            initColVis($(this), column);
        });

        $('li#colVisDatatable .dropdown-item').each(function (e) {
            // Get the column API object
            var column = dtable.column($(this).data('column'));
            initColVis($(this), column);
        });

        $("#" + tableId + "_filter").html("<div class=\"input-group input-group-sm\">\n" +
            "  <input type=\"text\" value=\"" + dtable.state().search.search + "\" class=\"form-control\" placeholder=\"{{trans('lang.search')}}\" aria-label=\"{{trans('lang.search')}}\">\n" +
            "  <div class=\"input-group-append\">\n" +
            "    <span class=\"input-group-text\"><i class=\"fas fa-search\"></i></span>\n" +
            "  </div>\n" +
            "</div>");
        $("#" + tableId + "_filter input").on('keyup', function () {
            dtable.search(this.value).draw();
        });

        $('[data-toggle=tooltip]').tooltip();
    }

    function renderiCheck(tableId) {
        initICheck();

        $("#" + tableId).on('draw.dt', function () {
            initICheck();
        });
    }

    $(document).ready(function () {
        $.fn.dataTableExt.sErrMode = 'none';
    });

</script>
