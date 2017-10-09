/**
 * Created by My on 10/6/2017.
 */
angular
    .module('altairApp')
    .controller("fassetaddexpenseCtrl",['$scope','$rootScope','orgs','mainService','$state','sweet','$cookies',
        function ($scope,$rootScope,orgs,mainService,$state,sweet,$cookies) {
            var aj=[{"text":"ROOT","value":"null"}];
            var forumType=[{"text":"inline","value":1},{"text":"pop-up","value":2},{"text":"batch","value":3},{"text":"custom","value":4}];
            $scope.domain="com.macro.dev.models.SettingsMean.";
            $scope.domainLocation="com.macro.dev.models.SettingsMean.";
            $scope.domainCustomer="com.macro.dev.models.SettingsMean.";

            $rootScope.toBarActive = true;

            $scope.$on('$destroy', function() {
                $rootScope.toBarActive = false;
            });

            var $formValidateLocation = $('#form_val_location');
            $formValidateLocation
                .parsley()
                .on('form:validated',function() {
                    $scope.$apply();
                })
                .on('field:validated',function(parsleyField) {
                    if($(parsleyField.$element).hasClass('md-input')) {
                        $scope.$apply();
                    }
                });

            var modal_location = UIkit.modal("#modal_location");
            $scope.newLocation = function(x,y){
                modal_location.show();
            };

            var modal_customer = UIkit.modal("#modal_customer");
            $scope.newLocation = function(x,y){
                modal_customer.show();
            };

            $scope.submitFormLocation = function(){
                mainService.withdata('POST', '/api/core/create/'+$scope.domainLocation,  $scope.formdataLocation).
                then(function(data){
                    sweet.show('Мэдээлэл', 'Үйлдэл амжилттай.', 'success');
                    $(".k-grid").data("kendoGrid").dataSource.read();
                });
            }

            var modal_customer = UIkit.modal("#modal_customer");
            $scope.newCustomer = function(x,y){
                modal_customer.show();
                mainService.withdata('POST', '/api/core/create/'+$scope.domainCustomer,  $scope.formdataCustomer).
                then(function(data){
                    sweet.show('Мэдээлэл', 'Үйлдэл амжилттай.', 'success');
                    $(".k-grid").data("kendoGrid").dataSource.read();
                });
            }

            $scope.productsDataSource = {
                batch: true,
                transport: {
                    read:  {
                        url: "/api/core/list/LutMenu?access_token="+$cookies.get('access_token'),
                        dataType: "jsonp"
                    },
                    parameterMap: function(options, operation) {
                        if (operation !== "read" && options.models) {
                            return {models: kendo.stringify(options.models)};
                        }
                    },
                    schema: {
                        data:"data",
                        total:"total",
                        model: {
                            id: "id",
                            fields: {
                                id: { editable: false,nullable: true},
                                code: { type: "string", validation: { required: true } },
                                orgid: { type: "number", validation: { required: true } },
                                mean: { type: "string",validation: { required: true } },
                            }
                        }
                    },
                    pageSize: 8,
                }
            }

            console.log($scope.productsDataSource);

            $scope.customerOptions = {
                filter: "startswith",
                dataSource: $scope.productsDataSource,
                dataTextField: "id",
                dataValueField: "menuname",
                optionLabel: "Харилцагч...",
                noDataTemplate: $("#noDataCustomerTemplate").html()
            };
            $scope.locationOptions = {
                filter: "startswith",
                dataSource: $scope.productsDataSource,
                dataTextField: "text",
                dataValueField: "value",
                optionLabel: "Байршил...",
                noDataTemplate: $("#noDataLocationTemplate").html()
            };

            $scope.tr={
                receipttype:1
            }

            $scope.recieptDefault=true;
            $scope.receiptChange=function () {
                if($scope.tr.receipttype==1){
                    $scope.recieptDefault=true;
                }
                else{
                    $scope.recieptDefault=false;
                }
            }

            $scope.selectize_a_data = {
                options: [
                    {
                        id: 1,
                        title: "Автомат",
                        value: "1"
                    },
                    {
                        id: 2,
                        title: "Гараар",
                        value: "2"
                    }
                ]
            };

            $scope.selectize_a_config = {
                plugins: {
                    'disable_options': {
                        disableOptions: ["c1","c2"]
                    }
                },
                create: false,
                maxItems: 1,
                placeholder: 'Сонгох...',
                valueField: 'value',
                labelField: 'title',
                searchField: 'title'
            };

            $scope.selectize_c_options = ["Item A", "Item B", "Item C"];

            $scope.selectize_c_config = {
                plugins: {
                    'tooltip': ''
                },
                create: false,
                maxItems: 1,
                placeholder: 'Банк...'
            };

            var modal_inventory = UIkit.modal("#modal_inventory");
            $scope.inventory = function(){
                // modal_inventory.show();
                $state.go('restricted.inv.');
            }

            $scope.back=function () {
                $state.go('restricted.fasset.sells');
            }

            var $maskedInput = $('.masked_input');
            if($maskedInput.length) {
                $maskedInput.inputmask();
            }

            var $formValidate = $('#form_val');
            $formValidate
                .parsley()
                .on('form:validated',function() {
                    $scope.$apply();
                })
                .on('field:validated',function(parsleyField) {
                    if($(parsleyField.$element).hasClass('md-input')) {
                        $scope.$apply();
                    }
                });

            $scope.pmenuGrid = {
                dataSource: {

                    transport: {
                        read:  {
                            url: "/api/core/list/SettingsMean?access_token="+$cookies.get('access_token'),
                            data: {"sort":[{field: 'id', dir: 'asc'}]},
                            type: 'GET',
                            dataType: "json"
                        },
                        update: {
                            url: "/api/core/update/"+$scope.domain+"?access_token="+$cookies.get('access_token'),
                            dataType: "json",
                            type:"POST",
                            complete: function(e) {
                                $(".k-grid").data("kendoGrid").dataSource.read();
                            }
                        },
                        destroy: {
                            url: "/api/core/delete/"+$scope.domain+"?access_token="+$cookies.get('access_token'),
                            dataType: "json",
                            type:"POST"
                        },
                        create: {
                            url: "/api/core/create/"+$scope.domain+"?access_token="+$cookies.get('access_token'),
                            dataType: "json",
                            type:"POST",
                            complete: function(e) {
                                $(".k-grid").data("kendoGrid").dataSource.read();
                            }
                        },
                        parameterMap: function(options) {
                            options.data=JSON.stringify( options)
                            return options;
                        }
                    },
                    schema: {
                        data:"data",
                        total:"total",
                        model: {
                            id: "id",
                            fields: {
                                id: { editable: false,nullable: true},
                                code: { type: "string", validation: { required: true } },
                                orgid: { type: "number", validation: { required: true } },
                                mean: { type: "string",validation: { required: true } },
                            }
                        }
                    },
                    pageSize: 8,
                    serverFiltering: true,
                    serverPaging: true,
                    serverSorting: true
                },
                excel: {
                    fileName: "Export.xlsx",
                    proxyURL: "https://demos.telerik.com/kendo-ui/service/export",
                    filterable: true,
                    allPages: true,
                },
                pdf: {
                    allPages: true,
                    avoidLinks: true,
                    paperSize: "A4",
                    margin: { top: "2cm", left: "1cm", right: "1cm", bottom: "1cm" },
                    landscape: true,
                    repeatHeaders: true,
                    template: $("#page-template").html(),
                    scale: 0.8
                },
                pdfExport: function(e) {
                    e.sender.hideColumn(7);
                    e.promise
                        .progress(function(e) {
                            if (e.pageNumber > 1) {
                                e.page.options.pdf = {
                                    landscape: true
                                };
                            }
                        });
                },
                filterable:{
                    mode: "row"
                },
                sortable: true,
                resizable: true,
                pageable: {
                    refresh: true,
                    pageSizes: true,
                    buttonCount: 5
                },
                columns: [
                    {title: "#",template: "<span class='row-number'></span>", width:60},
                    { field:"orgid", values:orgs,title: "Нэр /Mn/", width: 200 },
                    { field:"code", title: "Нэр /Mn/", width: 200 },
                    { field: "mean", title:"URL"}
                ],
                dataBound: function () {
                    var rows = this.items();
                    $(rows).each(function () {
                        var index = $(this).index() + 1
                            + ($(".k-grid").data("kendoGrid").dataSource.pageSize() * ($(".k-grid").data("kendoGrid").dataSource.page() - 1));;
                        var rowLabel = $(this).find(".row-number");
                        $(rowLabel).html(index);
                    });
                },

            };

            if($rootScope.ruptype==1){
                $scope.pmenuGrid.editable="inline";
                if($rootScope.rcreate==1){
                    $scope.pmenuGrid.toolbar= ["create"];
                }
                if($rootScope.rupdate==1 && $rootScope.rdelete==1){
                    $scope.pmenuGrid.columns.push({ command: ["edit", "destroy"], title: "&nbsp;", width: "270px" });
                }
                else if($rootScope.rupdate==1 && $rootScope.rdelete==0){
                    $scope.pmenuGrid.columns.push({ command: ["edit"], title: "&nbsp;", width: "140px" });
                }
                else if($rootScope.rupdate==0 && $rootScope.rdelete==1){
                    $scope.pmenuGrid.columns.push({ command: ["destroy"], title: "&nbsp;", width: "140px" });
                }
                if($rootScope.rexport==1){
                    // $scope.pmenuGrid.toolbar.push("excel");
                    // $scope.pmenuGrid.toolbar.push("pdf");
                }
            }
            if($rootScope.ruptype==2){
                $scope.pmenuGrid.editable="popup";
                if($rootScope.rcreate==1){
                    $scope.pmenuGrid.toolbar= ["create"];
                }
                if($rootScope.rupdate==1 && $rootScope.rdelete==1){
                    $scope.pmenuGrid.columns.push({ command: ["edit", "destroy"], title: "&nbsp;", width: "250px" });
                }
                else if($rootScope.rupdate==1 && $rootScope.rdelete==0){
                    $scope.pmenuGrid.columns.push({ command: ["edit"], title: "&nbsp;", width: "140px" });
                }
                else if($rootScope.rupdate==0 && $rootScope.rdelete==1){
                    $scope.pmenuGrid.columns.push({ command: ["destroy"], title: "&nbsp;", width: "140px" });
                }
                if($rootScope.rexport==1){
                    $scope.pmenuGrid.toolbar.push("excel");
                    $scope.pmenuGrid.toolbar.push("pdf");
                }
            }
            if($rootScope.ruptype==3){
                $scope.pmenuGrid.editable=true;

                if($rootScope.rcreate==1){
                    if($rootScope.rupdate==1){
                        $scope.pmenuGrid.toolbar= ["create", "save", "cancel"];
                    }
                    else{
                        $scope.pmenuGrid.toolbar= ["create"];
                    }
                }
                if($rootScope.rdelete==1){
                    $scope.pmenuGrid.columns.push({ command: ["destroy"], title: "&nbsp;", width: "140px" });
                }
                if($rootScope.rexport==1){
                    $scope.pmenuGrid.toolbar.push("excel");
                    $scope.pmenuGrid.toolbar.push("pdf");
                }
            }
            if($rootScope.ruptype==4){
                //	$scope.pmenuGrid.toolbar= kendo.template($("#add").html());
                $scope.pmenuGrid.editable="popup";
                $scope.pmenuGrid.columns.push({template: kendo.template($("#update").html()), width: "200px"});
            }

        }
    ]);
