/// <reference path="jquery-1.10.2.js" />
/// <reference path="jquery-1.10.2.intellisense.js" />
var weeks = [];

$(document).ready(function () {
    prepareWeeks();
    GenerateWeeks();
    BindDdl();
    GetHeader(0);
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
    moment();
    var initialWeek = new Date(weeks[0]);
    $('span.calender-event-week').html(initialWeek.getDate() + "-" + (initialWeek.getDate() + 6));
    $('.list-inline').on('click', '.calender-event-previous,.calender-event-next', function () {
        if ($(this).hasClass("calender-event-previous")) {
            alert("dasdad")
        }
        else {
            alert("sasas")
        }
    });

    $('table td').on('click', '.glyphicon-cog', function (event) {
        $(this).parent().parent().removeClass("shift")
        clkdId = $(this).parent().parent().attr("value");
        event.stopPropagation();
        $("#Modal").modal();
        $("#modelBody").html("<p>Date: <input type='text' id='datepicker'></p><br><input data-toggle='modal' type='button' value='Submit' id='btn'>");
        $("#datepicker").datepicker();
    });
    $('select').on("change", function () {
        GetHeader($(this).val());
    });

    $('#modelBody').on('click', '#btn', function () {
        $("[value='" + clkdId + "']").html($('#datepicker').val());
        console.log($('#datepicker').val());
    });
});

function BindDdl() {
    var ddl = "";
    for (var i = 0; i < weeks.length; i++) {
        ddl += "<option value='" + i + "'>" + weeks[i].getDate() + "/" + (weeks[i].getMonth() + 1) + "/" + weeks[i].getFullYear() + "</option>";
    }
    $('select').append(ddl);
}

function GetHeader(weekIndex) {
    var Week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Sunday"];
    var head = '';
    var weekDate = "";
    weekDate = new Date(weeks[parseInt(weekIndex)]);
    head += '<th class="borders">Employees</th>';
    for (var i = 0; i < Week.length; i++) {
        head += '<th class="borders">';
        head += weekDate.getDate() + "/" + (weekDate.getMonth() + 1) + "/" + weekDate.getFullYear();
        head += "<p>" + Week[i] + "</p>";
        head += '</th>';
        weekDate.setDate(weekDate.getDate() + 1);
    }
    debugger;
    $('thead').html(head);
}

function prepareWeeks() {
    var cDate = new Date();
    var day = cDate.getDay();
    if (day != 0) {
        cDate.setHours(-24 * (day));
    }
    weeks.push(new Date(cDate.toDateString()));
    for (var i = 0; i < 6; i++) {
        weeks.push(new Date(cDate.setDate(cDate.getDate() + 7)));
    }
}

function GenerateWeeks() {
    var viewHtml = '';
    viewHtml += '<option value="0">select</option>';
    for (var i = 0; i < weeks.length; i++) {
        var dateString = "" + (weeks[i].getMonth() + 1) + "-" + (weeks[i].getDate()) + "-" + (weeks[i].getFullYear());
        viewHtml += "<option value='" + dateString + "'>" + dateString + "</option>"
    }
    jQuery('.week').html(viewHtml);
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
        for (var i = 1; i <= 7; i++) {
            body += '<td value="' + Employee[ind].Id + '_' + i + '" class="borders shift">';
            //body += ;
            body += '</td>';
        }
        body += '</tr>';
    });
    $('tbody').html(body);
}