
/// <reference path="jquery-1.10.2.intellisense.js" />

$.ajax({
    type: "GET",
    url: "/Home/AccessConfigJson",
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function (datas) {
        var table = '';
        table += '<tr>';
        table += '<th>';
        table += '</th>';
        table += '<th>';
        table += '</th>';
        var Role = datas.Role;
        for (var i = 0; i < Role.length ; i++) {
            table += '<th>';
            table += Role[i].Name;
            table += '</th>';
        }
        table += '</tr>';
        var Menu = datas.Menu;
        var Feature = datas.Feature;
        for (var i = 0; i < Feature.length ; i++) {
            table += '<tr>';
            for (var j = 0; j < Menu.length ; j++) {
                if (Menu[j].Menu_Id == Feature[i].Menu_Id) {
                table += '<td>';
                table += Menu[j].Name;
                table += '</td>';
            }
        }
        table += '<td>';
        table += Feature[i].Name;
        table += '</td>';
        for (var j = 0; j < Role.length ; j++) {
            table += '<td>';
            table += "<input type='checkbox' value='" + +Feature[i].id + "_" + Role[j].Id + "'>";
            table += '</td>';
        }
        table += '</tr>';
    }
        $('.table-bordered').html(table);
},
error: function (request, status, error) {
    alert(request, status, error);
}
});

var Feat = [];
var arr = [];
$('.table td input:checkbox').each(function (index, row) {
    var txt = $(row).val();
    var arr = txt.split('_');
    Feat.push(arr);
    console.log(arr[0] + '____' + arr[1]);
});

$.ajax({
    type: "GET",
    url: "/Home/GetFeature",
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function (data) {
        $('.table td input:checkbox').each(function (index, row) {
            var Feature = parseInt($(row).val().split("_")[0]);
            var Role = parseInt($(row).val().split("_")[1]);
            for (var i = 0; i < data.length ; i++) {
                if (data[i].Feature_Id == Feature && data[i].Role_Id == Role && data[i].IsCheck == true) {
                    $(this).attr("Checked", true);
                }
            }
        });
    },
    error: function (request, status, error) {
        alert(request, status, error);
    }
});

$('#btn').click(function () {
    var Feat = [];
    var Rol = [];
    var IsTrue = [];
    $('.table td input').each(function (index, row) {
        var Feature = parseInt($(row).val().split("_")[0]);
        var Role = parseInt($(row).val().split("_")[1]);
        var checked = 0;
        if ($(row).is(':checked')) {
            checked = 1;
        } else {
            checked = 0;
        }
        IsTrue.push(checked);
        console.log(Feature + '____' + Role + " " + checked);
        Feat.push(Feature);
        Rol.push(Role);
    });
    var JsonModel = { Feature: Feat, Role: Rol, IsActive: IsTrue }

    $.ajax({
        type: "POST",
        url: "/Home/AddFeature",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({ FeatureRole: JsonModel }),
        success: function (data) {
            if (data == true) {
                $('.botAlert').html("<div class='alert alert-success fade'>" +
                            "<button type='button' class='close' data-dismiss='alert'>×</button>" +
                            "<strong>Alert!</strong> Here is my message.." +
                             "</div>");
                $(".alert").removeClass("in").show();
                $(".alert").delay(200).addClass("in").fadeOut(2000);
            }
        },
        error: function (request, status, error) {
            alert(request, status, error);
        }
    });
});