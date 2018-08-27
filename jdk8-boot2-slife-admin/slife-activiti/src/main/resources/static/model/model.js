function get_data(columns, sorts, uri) {
    $('#exampleTable').bootstrapTable(
        {
            method: 'post', // 服务器数据的请求方式 get or post
            url: url + uri, // 服务器数据的加载地址
            //showRefresh : true,
            //showToggle : true,
            //showColumns : true,
            iconSize: 'outline',
            toolbar: '#exampleToolbar',
            striped: true, // 设置为true会有隔行变色效果
            dataType: "json", // 服务器返回的数据类型
            pagination: true, // 设置为true会在底部显示分页条
            // queryParamsType : "limit",
            // //设置为limit则会发送符合RESTFull格式的参数
            singleSelect: false, // 设置为true将禁止多选
            // contentType : "application/x-www-form-urlencoded",
            // //发送到服务器的数据编码类型
            pageSize: 10, // 如果设置了分页，每页数据条数
            pageNumber: 1, // 如果设置了分布，首页页码
            //search : true, // 是否显示搜索框
            //showColumns : true, // 是否显示内容下拉框（选择显示的列）
            sidePagination: "server", // 设置在哪里进行分页，可选值为"client" 或者
            // "server"
            queryParams: function (params) {

                var searchParams = {};
                $("#exampleToolbar ._search").each(function () {
                    searchParams[$(this).attr('name')] = $(this).val();
                });

                var p = {
                    "pageNumber": this.pageNumber,
                    "pageSize": this.pageSize,
                    "searchParams": searchParams,
                    "sorts": sorts

                };
                return p;

            },
            // //请求服务器数据时，你可以通过重写参数的方式添加一些额外的参数，例如 toolbar 中的参数 如果
            // queryParamsType = 'limit' ,返回参数必须包含
            // limit, offset, search, sort, order 否则, 需要包含:
            // pageSize, pageNumber, searchText, sortName,
            // sortOrder.
            // 返回false将会终止请求
            columns: columns
        });
}