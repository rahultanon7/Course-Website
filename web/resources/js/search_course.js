/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $('#course_table').tableFilterable({
        filters: [
            {
                filterSelector: '#course_name',
                event: 'keyup',
                filterCallback: function ($tr, filterValue) {
                    return  $tr.children().eq(3).text().toLowerCase().indexOf(filterValue) != -1;
                },
                delay: 100
            },
            {
                filterSelector: '#level_course',
                event: 'keyup',
                filterCallback: function ($tr, filterValue) {
                    return  $tr.children().eq(1).text().toLowerCase().indexOf(filterValue) != -1;
                },
                delay: 100
            },
            {
                filterSelector: '#fields',
                event: 'keyup',
                filterCallback: function ($tr, filterValue) {
                    return  $tr.children().eq(5).text().toLowerCase().indexOf(filterValue) != -1;
                },
                delay: 100
            }
        ]
    });
});

function addCourse() {
    window.location = 'showCourse.htm';
}
