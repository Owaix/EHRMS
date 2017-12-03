/// <reference path="jquery-1.10.2.js" />
/// <reference path="jquery-1.10.2.intellisense.js" />

$(document).ready(function () {
    GetHeader();
    GetBody();
    var clkdId;
    $('table td.shift').on('click', function () {
        //if ($(this).hasClass("Normal")) {
        //    $(this).removeClass("Normal")
        //    $(this).addClass("Timeoff")
        //} else {
        $(this).addClass("Normal");
        //  }
        var val1 = $(this).attr("value").split("_")[0];
        var val2 = $(this).attr("value").split("_")[1];
        $(this).html("<span>" + val1 + " " + val2 + "<i class='glyphicon glyphicon-cog margincog'></i></span>");
    });

    $('table td').on('click', '.glyphicon-cog', function (event) {
        $(this).parent().parent().removeClass("shift")
        clkdId = $(this).parent().parent().attr("value");
        event.stopPropagation();
        $("#Modal").modal();
        $("#modelBody").html("<p>Date: <input type='text' id='datepicker'></p><br><input data-toggle='modal' type='button' value='Submit' id='btn'>");
        $("#datepicker").datepicker();
    });

    $('#modelBody').on('click', '#btn', function () {
        $("[value='" + clkdId + "']").html($('#datepicker').val());
        console.log($('#datepicker').val());
    });
});
function GetHeader() {
    var Weeks = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Sunday"];
    var head = '';
    head += '<th class="borders">Employees</th>';
    for (var i = 0 ; i < Weeks.length ; i++) {
        head += '<th class="borders">';
        head += Weeks[i];
        head += '</th>';
    }
    $('thead').html(head);
}

function GetBody() {
    var body = '';
    var Employee = [
        { Id: 1, Name: "James" },
        { Id: 2, Name: "Cook" },
        { Id: 3, Name: "Sam" },
        { Id: 4, Name: "John" },
        { Id: 5, Name: "Tim" },
        { Id: 6, Name: "Adam" },
        { Id: 7, Name: "Johnny" },
        { Id: 8, Name: "Root" }
    ];
    $('table th').each(function (ind, ele) {
        body += '<tr>';
        body += '<td class="borders emp">';
        body += Employee[ind].Name;
        body += '</td>';
        for (var i = 1 ; i <= 7 ; i++) {
            body += '<td value="' + Employee[ind].Id + '_' + i + '" class="borders shift">';
            //body += ;
            body += '</td>';
        }
        body += '</tr>';
    });
    $('tbody').html(body);
}